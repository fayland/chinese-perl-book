#!/usr/bin/perl

use strict;
use warnings;
use lib 'lib';
use Template;

my $tt = Template->new( {
    PRE_CHOMP => 1,
    PLUGIN_BASE => 'MyTemplate::Plugin::Filter',
#    PLUGINS => {
#        Textile => 'MyTemplate::Plugin::Filter::Textile',
#    }
} );

$tt->process(\*DATA);

1;
__DATA__
[% USE Textile %]
[% FILTER $Textile %]this is _like_ *so* *cool*[% END %]