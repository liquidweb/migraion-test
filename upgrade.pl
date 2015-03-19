#!/usr/bin/env perl
use strict;
use warnings;
use aliased 'DBIx::Class::DeploymentHandler' => 'DH';
use FindBin;
use lib "$FindBin::Bin/lib";
use My::Schema;
my $schema = My::Schema->connect('dbi:SQLite:mydb.db');
 
my $dh = DH->new({
   schema              => $schema,
   script_directory    => "$FindBin::Bin/migrations",
   databases           => 'SQLite',
   sql_translator_args => { add_drop_table => 0 },
   force_overwrite     => 1,
});
 
$dh->prepare_deploy;
$dh->prepare_upgrade({ from_version => 2, to_version => 3});
