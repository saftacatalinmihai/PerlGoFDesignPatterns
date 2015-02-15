package Component;
use utf8;
use Moose;

has id => (is => 'rw', isa => 'Str');

sub Operation{
    confess(qq["Operation" must be implemented by a subclass!]);
}

sub Add{
    confess(qq["Add" must be implemented by a subclass!]);
}

sub Remove{
    confess(qq["Remove" must be implemented by a subclass!]);
}

sub GetChild{
    confess(qq["GetChild" must be implemented by a subclass!]);
}

__PACKAGE__->meta->make_immutable;

1;
