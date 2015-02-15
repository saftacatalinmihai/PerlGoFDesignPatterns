package ProductA2;
use Data::Printer;
use utf8;
use Moose;

extends 'AbstractProductA';

has name => (is => "rw", isa => "Str", default => sub {"A2"});

__PACKAGE__->meta->make_immutable;

 1;
