package My::Schema;
use base qw/DBIx::Class::Schema/;

use strict;
use warnings;

our $VERSION = 3;

__PACKAGE__->load_namespaces();

1;

__END__
