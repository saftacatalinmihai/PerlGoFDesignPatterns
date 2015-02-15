package Leaf;
use Moose;
use Component;

with 'Component';

sub Operation{
    my $self = shift;
    print "operation in leaf: ". $self->id ."\n";;

    return;
}

sub Add{
    confess(qq["Add" should not be called on the Leaf class]);
}

sub Remove{
    confess(qq["Remove" should not be called on the Leaf class]);
}

sub GetChild{
    confess(qq["GetChild" should not be called on the Leaf class]);
}

__PACKAGE__->meta->make_immutable;

1;
