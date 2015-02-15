package Component;
use utf8;
use Moose::Role;

requires qw(Operation Add Remove GetChild );

has id => (is => 'rw', isa => 'Str');

1;
