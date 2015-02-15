package ConcreteCommandB;
use Moose;
extends 'Command';

has reciever => (is => 'rw', isa =>'Reciever');

sub execute{
    my $self = shift;
    $self->reciever->Action_b();
}

__PACKAGE__->meta->make_immutable;


1;
