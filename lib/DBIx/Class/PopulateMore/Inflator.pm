package DBIx::Class::PopulateMore::Inflator;

use Moose;

=head1 NAME

DBIx::Class::PopulateMore::Inflator - Base Class for keyword Inflators

=head1 DESCRIPTION

When L<DBIx::Class::PopulateMore::Command> executes, it uses a vistor object 
(see L<DBIx::Class::PopulateMore::Visitor> to descend the key values of the
data hash that is used to put stuff into the given tables.  If it finds a value
that matches a particular regexp, that means the value needs to be inflated and
it's passed to the inflating dispatcher, which finds the correct Inflator based
on the given namespace.

=head1 ATTRIBUTES

This class defines the following attributes.

=head1 METHODS

This module defines the following methods.

=head2 name

returns the name of this inflator.  Should be something you expect to be unique
across all defined inflators.  Defaults to something based on the namespace.

=cut

sub name
{
	my $class = ref shift @_;
	my $package = __PACKAGE__;
	my ($name) = ($class =~m/^$package\:\:(.+)$/);
	
	return $name;
}


=head2 inflate($command, $string)

This is called by L<DBIx::Class::PopulateMore::Command> dispatcher, when there 
is a match detected by the visitor.

=cut

sub inflate
{ 
	confess "You forgot to implement ->inflate";
}


=head1 AUTHOR

Please see L<DBIx::Class::PopulateMore> For authorship information

=head1 LICENSE

Please see L<DBIx::Class::PopulateMore> For licensing terms.

=cut


1;
