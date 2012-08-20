use MooseX::Declare; use Method::Signatures::Modifiers;

class Person {
  has 'name' => ( isa => 'Str', is => 'rw', default => 'John Q Public' );
  has 'age'  => ( isa => 'Num', is => 'ro', required => 1 );

  method speak (Str $message) {
    print $self->name . ": $message\n";
  }
  method info () {
    $self->speak("I'm " . $self->age); 
  }
}

class Soldier extends Person {
  has '+name'  => ( default => 'Gomer Pyle' );
  has 'serial' => ( isa => 'Num', is => 'ro', required => 1 );

  after info () {
    $self->speak( 'My serial number is ' . $self->serial );
  };
}
