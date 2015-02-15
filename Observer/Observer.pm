package Observer;
use Moose::Role;

requires 'Update';

has id => (is => 'rw', isa => 'Str');

1;
