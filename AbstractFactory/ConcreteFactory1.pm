package ConcreteFactory1;
use Data::Printer;
use utf8;
use  Moose;
use ProductA1;
use ProductB1;

extends 'AbstractFactory';

sub CreateProductA{
    print "Creating Product A, Factory 1\n";
    return new ProductA1->new()
}

sub CreateProductB{
    print "Creating Product B, Factory 1\n";
    return new ProductB1->new()
}

__PACKAGE__->meta->make_immutable;

 1;
