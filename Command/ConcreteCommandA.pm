package ConcreteCommandA;
use Moose;
extends 'Command';

has reciever => (is => 'rw', isa =>'Reciever');

sub execute{
    my $self = shift;
    $self->reciever->Action_a();
}

__PACKAGE__->meta->make_immutable;


1;
