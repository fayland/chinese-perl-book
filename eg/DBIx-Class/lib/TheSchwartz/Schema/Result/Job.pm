package     # hidden from PAUSE
    TheSchwartz::Schema::Result::Job;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("job");
__PACKAGE__->add_columns(
  "jobid",
  {
    data_type => "INTEGER",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "funcid",
  {
    data_type => "INTEGER UNSIGNED",
    default_value => undef,
    is_nullable => 0,
    size => undef,
  },
  "arg",
  {
    data_type => "MEDIUMBLOB",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "uniqkey",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "insert_time",
  {
    data_type => "INTEGER UNSIGNED",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "run_after",
  {
    data_type => "INTEGER UNSIGNED",
    default_value => undef,
    is_nullable => 0,
    size => undef,
  },
  "grabbed_until",
  {
    data_type => "INTEGER UNSIGNED",
    default_value => undef,
    is_nullable => 0,
    size => undef,
  },
  "priority",
  {
    data_type => "SMALLINT UNSIGNED",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "coalesce",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("jobid");
__PACKAGE__->add_unique_constraint("funcid_uniqkey_unique", ["funcid", "uniqkey"]);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-07-28 22:58:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XOG+MO3iz1UP/3txlqkSUg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
