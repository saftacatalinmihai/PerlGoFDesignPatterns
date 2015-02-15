package ProductB2;
use Data::Printer;
use utf8;
use Moose;

extends 'AbstractProductB';

has name => (is => "rw", isa => "Str", default => sub {"B2"});

__PACKAGE__->meta->make_immutable;

 1;
