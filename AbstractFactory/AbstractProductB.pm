package AbstractProductB;
use Data::Printer;
use utf8;
use Moose;

has name => (is => 'rw',  isa => "Str");

__PACKAGE__->meta->make_immutable;

 1;
