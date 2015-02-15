package ConcreteStrategyB;
use Data::Printer;
use utf8;
use Moose;

extends 'Strategy';

sub AlgorithmInterface{
    print "strategy B\n";
}

__PACKAGE__->meta->make_immutable;

1;
