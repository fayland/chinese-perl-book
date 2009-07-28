#!/usr/bin/perl

use strict;
use warnings;
use FindBin qw/$Bin/;
use DBI;

my $dbname = "$Bin/db.sqlite";
my $dbh = DBI->connect("dbi:SQLite:dbname=$dbname", '', '', {
    RaiseError => 1,
    PrintError => 0,
}) or die $DBI::err;

open(my $fh, '<', "$Bin/schema.sql");
local $/;
my $schema = <$fh>;
close($fh);

$dbh->begin_work;
for (split /;\s*/m, $schema) {
    $dbh->do($_);
}
$dbh->commit;
