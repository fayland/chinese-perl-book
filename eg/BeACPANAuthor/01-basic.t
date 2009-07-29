#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 3;

ok(1, 'true value');
cmp_ok( 1+1, '==', 2, '1+1=2');
use_ok('Test::More');

1;