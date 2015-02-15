package State;
use Data::Printer;
use utf8;
use Moose;

sub handle{
    confess(qq["handle" must be implemented by a subclass!]);
}

1;
