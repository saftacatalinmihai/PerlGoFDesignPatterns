package Strategy;
use Data::Printer;
use utf8;
use Moose;

sub AlgorithmInterface{
    confess(qq["AlgorithmInterface" must be implemented by a subclass!]);
}

__PACKAGE__->meta->make_immutable;

1;
