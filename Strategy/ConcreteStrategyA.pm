package ConcreteStrategyA;
use Data::Printer;
use utf8;
use Moose;

extends 'Strategy';

sub AlgorithmInterface{
    print "strategy A\n";
}

__PACKAGE__->meta->make_immutable;

1;
