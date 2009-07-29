package TheSchwartz::Schema::Exitstatus;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("exitstatus");
__PACKAGE__->add_columns(
  "jobid",
  {
    data_type => "INTEGER",
    default_value => undef,
    is_nullable => 0,
    size => undef,
  },
  "funcid",
  {
    data_type => "INT UNSIGNED",
    default_value => 0,
    is_nullable => 0,
    size => undef,
  },
  "status",
  {
    data_type => "SMALLINT UNSIGNED",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "completion_time",
  {
    data_type => "INTEGER UNSIGNED",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "delete_after",
  {
    data_type => "INTEGER UNSIGNED",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("jobid");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-07-28 22:58:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jNza1JGUzAq+itzsJIT40g


# You can replace this text with custom content, and it will be preserved on regeneration
1;
