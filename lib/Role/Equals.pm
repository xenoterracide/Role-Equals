package Role::Equals;
use 5.008;
use strict;
use warnings;
use Moo::Role;
use Scalar::Util qw( refaddr );

# VERSION

sub equals {
	my ( $self, $obj ) = @_;

	my $ret
		= ! blessed $obj                ? 0
		: refaddr $self == refaddr $obj ? 1
		:                                 undef
		;

	return $ret if defined $ret;
	return; # do the right thing for list context
}

with qw(
	Interface::Equatable
);

1;

# ABSTRACT: dumb equatable

=head1 DESCRIPTION

Implements L<Interface::Equatable>. This implementation only checks to ensure
that the "object" is blessed, and has the same reference.

=cut
