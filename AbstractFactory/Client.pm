#!/usr/bin/env perl
package Client;
use Data::Printer;
use utf8;
use Moose;

has factory => (
    is => "rw",
    isa => 'AbstractFactory',
    required => 1
);

has productA => (
    is => 'rw',
    required => 0,
    isa => 'AbstractProductA',
    builder => '_build_productA'
);
has productB => (
    is => 'rw',
    required => 0,
    isa => 'AbstractProductB',
    builder => '_build_productB'
);

sub _build_productA {
    my $self = shift;
    return $self->factory->CreateProductA();
}

sub _build_productB {
    my $self = shift;
    return $self->factory->CreateProductB();
}

__PACKAGE__->meta->make_immutable;

 1;
