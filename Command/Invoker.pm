package Invoker;
use Moose;

has command_a => (is => 'rw', isa => 'Command');
has command_b => (is => 'rw', isa => 'Command');

sub Do_a{
    my $self = shift;
    $self->command_a->execute();
}

sub Do_b{
    my $self = shift;
    $self->command_b->execute();
}

__PACKAGE__->meta->make_immutable;

1;
