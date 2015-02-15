package Invoker;
use Moose;

has command => (is => 'rw', isa => 'Command');

sub Run{
    my $self = shift;
    $self->command->execute();
}

__PACKAGE__->meta->make_immutable;

1;
