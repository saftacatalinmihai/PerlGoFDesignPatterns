package Leaf;
use Moose;

extends 'Component';

sub Operation{
    my $self = shift;
    print "operation in leaf: ". $self->id ."\n";;

    return;
}

__PACKAGE__->meta->make_immutable;

1;
