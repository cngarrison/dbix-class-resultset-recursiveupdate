package
DBICTest::Schema::FileColumn;

use strict;
use warnings;
use base qw/DBIx::Class::Core/;
use File::Temp qw/tempdir/;

__PACKAGE__->table('file_columns');

__PACKAGE__->add_columns(
  id => { data_type => 'integer', is_auto_increment => 1 },
  file => {
    data_type        => 'varchar',
    size             => 255
  }
);

__PACKAGE__->set_primary_key('id');

1;
