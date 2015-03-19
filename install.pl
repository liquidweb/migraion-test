#!/usr/bin/env perl
 
use strict;
use warnings;
use aliased 'DBIx::Class::DeploymentHandler' => 'DH';
use Getopt::Long;
use FindBin;
use lib "$FindBin::Bin/lib";
use My::Schema;
 
my $force_overwrite = 0;
 
unless ( GetOptions( 'force_overwrite!' => \$force_overwrite ) ) {
    die "Invalid options";
}
 
my $schema = My::Schema->connect('dbi:SQLite:mydb.db');
 
my $dh = DH->new(
    {
        schema              => $schema,
        script_directory    => "$FindBin::Bin/migrations",
        databases           => 'SQLite',
        sql_translator_args => { add_drop_table => 0 },
        force_overwrite     => $force_overwrite,
    }
);
 
$dh->prepare_install;
$dh->install;