package TheSchwartz::Schema::Result::Funcmap;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("funcmap");
__PACKAGE__->add_columns(
  "funcid",
  {
    data_type => "INTEGER",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "funcname",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("funcid");
__PACKAGE__->add_unique_constraint("funcname_unique", ["funcname"]);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-07-28 22:58:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bZ9s6nIg6T9UWmlhsveRwQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
