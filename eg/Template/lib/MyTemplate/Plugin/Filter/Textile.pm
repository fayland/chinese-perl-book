package     # hidden from PAUSE
    MyTemplate::Plugin::Filter::Textile;

use strict;
use warnings;
use Template::Plugin::Filter;
use base qw(Template::Plugin::Filter);
use Text::Textile ();

sub filter {
   my ($self, $text) = @_;
   return Text::Textile::textile($text);
}

1;