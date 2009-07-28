#!/usr/bin/perl

use strict;
use warnings;
use FindBin qw/$Bin/;
use DBIx::Class::Schema::Loader qw/ make_schema_at /;

my $dbname = "$Bin/db.sqlite";
make_schema_at(
    'TheSchwartz::Schema',
    { debug => 1, dump_directory => './lib' },
    [ "dbi:SQLite:dbname=$dbname" ],
);
