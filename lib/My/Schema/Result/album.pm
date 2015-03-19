package My::Schema::Result::album;
use base qw/DBIx::Class::Core/;

__PACKAGE__->load_components(qw/Ordered/);
__PACKAGE__->position_column('rank');
__PACKAGE__->table('album');
__PACKAGE__->add_column(isbn => { is_nullable => 1 });
__PACKAGE__->add_columns(id =>
                          { 
                            data_type => 'integer',
                            size      => 16,
                            is_nullable => 0,
                            is_auto_increment => 1,
                          },
                        artist =>
                          { data_type => 'integer',
                            size      => 16,
                            is_nullable => 0,
                          },
                        title  =>
                          { data_type => 'varchar',
                            size      => 256,
                            is_nullable => 0,
                          },
                        rank =>
                          { data_type => 'integer',
                            size      => 16,
                            is_nullable => 0,
                            default_value => 0,
                          },
			  isbn => {
				data_type => 'text',
				size => 256,
				is_nullable => 1,
			  },
			release_year => {
				data_type => 'integer',
				is_nullable => 1,
			},
                       );

__PACKAGE__->set_primary_key('id');

1;
__END__
