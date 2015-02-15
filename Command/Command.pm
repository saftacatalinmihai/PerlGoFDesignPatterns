package Command;
use Moose;

sub execute{
    confess(qq["execute" must be implemented by a subclass!]);
}

__PACKAGE__->meta->make_immutable;


1;
