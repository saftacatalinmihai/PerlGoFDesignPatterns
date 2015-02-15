package ConcreteStateA;
use Data::Printer;
use utf8;
use Moose;

extends 'State';

sub handle{
    print "Handle A\n"
}

__PACKAGE__->meta->make_immutable;

1;
