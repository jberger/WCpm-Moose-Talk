has 'expensive' => ( 
  isa => 'Obj', is => 'rw', 
  lazy    => 1,
  builder => '_build_expensive',
);

sub _build_expensive {
  return Expensive::Class->new;
}

has 'nullable' => ( 
  isa => 'Num', is => 'rw', 
  predicate => 'has_thing', 
  clearer   => 'clear_thing',
);
