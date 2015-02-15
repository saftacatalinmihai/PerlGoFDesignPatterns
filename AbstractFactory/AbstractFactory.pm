package AbstractFactory;
use Data::Printer;
use utf8;
use Moose;

sub CreateProductA {
    confess(qq["CreateProductA" must be implemented by a subclass!]);
}

sub CreateProductB{
    confess(qq["CreateProductB" must be implemented by a subclass!]);
}

__PACKAGE__->meta->make_immutable;

 1;
