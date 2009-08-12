#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1;

BEGIN {
	use_ok( 'Book::Chinese::MasterPerlToday' );
}

diag( "Testing Book::Chinese::MasterPerlToday $Book::Chinese::MasterPerlToday::VERSION, Perl $], $^X" );
