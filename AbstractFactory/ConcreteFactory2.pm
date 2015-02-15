package ConcreteFactory2;
use Data::Printer;
use utf8;
use  Moose;
use ProductA2;
use ProductB2;

extends 'AbstractFactory';

sub CreateProductA{
    print "Creating Product A, Factory 2\n";
    return new ProductA2->new()
}

sub CreateProductB{
    print "Creating Product B, Factory 2\n";
    return new ProductB2->new()
}

__PACKAGE__->meta->make_immutable;

 1;
