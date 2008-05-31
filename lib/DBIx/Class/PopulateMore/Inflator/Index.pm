package DBIx::Class::PopulateMore::Inflator::Index;

use Moose;
extends 'DBIx::Class::PopulateMore::Inflator';

=head1 NAME

DBIx::Class::PopulateMore::Inflator::Index; Coerce DateTime from Strings

=head1 DESCRIPTION

Allows you to make the value equal to the result object of a previously
inserted row.

=head1 ATTRIBUTES

This class defines the following attributes.

=head1 METHODS

This module defines the following methods.

=head2 inflate($command, $string)

This is called by Populate's dispatcher, when there is a match.

=cut

sub inflate
{ 
	my ($self, $command, $string) = @_;

	return $command->get_rs_index($string)
	 || confess "Bad Index in Fixture: $string";
}


=head1 AUTHOR

Please see L<DBIx::Class::PopulateMore> For authorship information

=head1 COPYRIGHT & LICENSE

Please see L<DBIx::Class::PopulateMore> For licensing terms.

=cut


1;
