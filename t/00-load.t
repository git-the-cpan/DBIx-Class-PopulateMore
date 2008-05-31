use warnings;
use strict;

use DBIx::Class::PopulateMore;
use Test::More tests => 16;

diag( "Testing DBIx::Class::PopulateMore $DBIx::Class::PopulateMore::VERSION, Perl $], $^X" );
use_ok( 'DBIx::Class::PopulateMore' );
use_ok( 'DBIx::Class::PopulateMore::Command' );	
use_ok( 'DBIx::Class::PopulateMore::Inflator' );
use_ok( 'DBIx::Class::PopulateMore::Visitor' );
use_ok( 'DBIx::Class::PopulateMore::Inflator::Index' );	
use_ok( 'DBIx::Class::PopulateMore::Inflator::Date' );
use_ok( 'DBIx::Class::PopulateMore::Inflator::Env' );
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::Result' );
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::ResultSet' );
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::Result::Gender' );
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::Result::Person' );
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::Result::FriendList' );
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::ResultSet::Person' );	
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::Result::Company' );
use_ok( 'DBIx::Class::PopulateMore::Test::Schema::Result::CompanyPerson' );	
use_ok( 'DBIx::Class::PopulateMore::Test::Schema' );

