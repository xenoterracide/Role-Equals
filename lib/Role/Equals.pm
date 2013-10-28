package Role::Equals;
use 5.006;
use strict;
use warnings;
use Moo::Role;

# VERSION

sub equals {
	my ( $self, $obj ) = @_;

	return;
}

with qw(
	Interface::Equatable
);

1;

# ABSTRACT: dumb equatable
