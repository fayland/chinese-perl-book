#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 5;

use_ok('TheSchwartz::Schema');

foreach ('Exitstatus', 'Job', 'Error', 'Funcmap') {
    use_ok("TheSchwartz::Schema::Result::$_");
}

1;