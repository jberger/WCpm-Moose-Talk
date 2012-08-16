package Soldier;

use Moose;
extends 'Person';

has '+name'  => ( default => 'Gomer Pyle' );
has 'serial' => ( isa => 'Num', is => 'ro', required => 1 );

after 'info' => sub {
  my $self = shift;
  $self->speak( 'My serial number is ' . $self->serial );
}

1;
