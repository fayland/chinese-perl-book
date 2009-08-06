package     # hidden from PAUSE
    TheSchwartz::Schema::Result::Error;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("error");
__PACKAGE__->add_columns(
  "error_time",
  {
    data_type => "INTEGER UNSIGNED",
    default_value => undef,
    is_nullable => 0,
    size => undef,
  },
  "jobid",
  {
    data_type => "INTEGER",
    default_value => undef,
    is_nullable => 0,
    size => undef,
  },
  "message",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "funcid",
  {
    data_type => "INT UNSIGNED",
    default_value => 0,
    is_nullable => 0,
    size => undef,
  },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-07-28 22:58:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yAsTqilJKhyg2vPkK3Y4Ew


# You can replace this text with custom content, and it will be preserved on regeneration
1;
