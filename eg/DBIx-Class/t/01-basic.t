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
isa_ok($schema, 'TheSchwartz::Schema');

foreach ('Exitstatus', 'Job', 'Error', 'Funcmap') {
    can_ok( $schema->resultset($_), 'search' );
}

1;