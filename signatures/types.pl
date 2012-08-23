package Person;

use Moose;
use Method::Signatures;

...

method speak (Str $message) {
  print $self->name . ": $message\n";
}

...

