#!/usr/bin/env perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
use My::Schema;
my $schema = My::Schema->connect('dbi:SQLite:mydb.db.1');

$schema->resultset('album')->create({
	artist => 1,
	title  => 'bar',
	rank   => 10,
	isbn => 'lkjasldkjasd'
});


 
