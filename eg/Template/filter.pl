#!/usr/bin/perl

use strict;
use warnings;
use Template;

my $tt = Template->new( {
    POST_CHOMP => 1,
    FILTERS => {
        'ucf' => \&ucf,
        'lcf' => sub { lcfirst uc shift; },
        'cut' => [ \&cut, 1 ], # our dynamic filter
    },
} );

sub ucf {
    my $text = shift;
    $text = ucfirst lc $text;
    return $text;
}
sub cut {
    my ($context, $len) = @_;
    return sub {
        my $text = shift;
        $text = substr($text, 0, $len);
        return $text;
    }
}

$tt->process(\*DATA);

1;
__DATA__
[% FILTER ucf %]
template is great
[% END %]
[% lcf_text = 'template is great' %]
[% lcf_text | lcf %]

[% FILTER cut(6) %]template is great[% END %]