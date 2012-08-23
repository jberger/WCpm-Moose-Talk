# only shift off invocant
method simple (@_) {
  $self->do_something(shift);
}

# positional or named parameters
method with_names ($positional, :$name) {
  $self->do_somthing($positional, $name);
}
usage: $obj->with_names('foo', name => 'bar');

# optional arguments (must be at end)
method with_optional ($required, $optional?) {
  say $required if defined $optional;
}

# ... and may have default values
method with_defaults ($required, $optional = '42') {
  say "required: $required, optional = $optional"; 
}
