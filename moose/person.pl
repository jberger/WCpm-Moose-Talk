package Person;

use Moose; # strict and warnings!

has 'name' => ( isa => 'Str', is => 'rw', default => 'John Q Public' );
has 'age'  => ( isa => 'Num', is => 'ro', required => 1 );

sub speak {
  my $self = shift;
  my ($message) = @_;
  print $self->name . ": $message\n";
}

sub info {
  my $self = shift;
  $self->speak("I'm " . $self->age); 
}

1;

