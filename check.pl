#!/usr/bin/env perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
use aliased 'DBIx::Class::DeploymentHandler' => 'DH';
use My::Schema;
my $schema = My::Schema->connect('dbi:SQLite:mydb.db');


 my $dh = DH->new({
   schema              => $schema,
   script_directory    => "$FindBin::Bin/migrations",
   databases           => 'SQLite',
   sql_translator_args => { add_drop_table => 0 },
   force_overwrite     => 1,
});
 
my $version = $dh->database_version;

if ($version < $My::Schema::VERSION) {
	warn "Schema $version is installed, but $My::Schema::VERSION is needed.\n";
	$dh->upgrade;
}
