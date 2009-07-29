#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 5;
use FindBin qw/$Bin/;
use TheSchwartz::Schema;

my $dbname = "$Bin/../db.sqlite";
my $schema = TheSchwartz::Schema->connect(
    "dbi:SQLite:dbname=$dbname", '', '', {
    RaiseError => 1,
    PrintError => 0,
} );

my $dbh = $schema->storage->dbh;
# truncate the table so we can run the tests again and again
$dbh->do("DELETE FROM error");
# insert some faked data
my $sth = $dbh->prepare("INSERT INTO error (error_time, jobid, message, funcid) VALUES (?, ?, ?, ?)");
$sth->execute(time(), 1, 'Message A', 1);
$sth->execute(time(), 2, 'Message B', 1);
$sth->execute(time(), 2, 'Message C', 1);

# test failure_log/failures
my @failures = $schema->resultset('Error')->failure_log( 2 );
is scalar @failures, 2;
ok( grep { $_ eq 'Message B' } @failures );
ok( grep { $_ eq 'Message C' } @failures );

my $failure_num = $schema->resultset('Error')->failures( 1 );
is $failure_num, 1;
$failure_num = $schema->resultset('Error')->failures( 2 );
is $failure_num, 2;

# truncate the table so it wouldn't effect others
$dbh->do("DELETE FROM error");

1;