package Reciever;
use Moose;

sub Action_a{
    print "Action a in reciever\n";
}

sub Action_b{
    print "Action b in reciever\n";
}

__PACKAGE__->meta->make_immutable;

1;
