package Singer;
use Moose::Role;

has 'favorite_song' => ( isa => 'Str', is => 'ro', default => 'Stairway' );

sub sing {
  my $self = shift;
  my $song = @_ ? shift : $self->favorite_song
  print "I'm going to sing $song\n";
}

package RockStar;
use Moose;
with Singer;

package main;
RockStar->new->sing;
