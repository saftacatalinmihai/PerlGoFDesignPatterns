package ConcreteSubject;
use Moose;

with 'Subject';

has _state => ( is => 'rw', isa => 'Str', default => sub {""});

sub GetState{
    my $self = shift;
    return $self->_state;
}

sub SetState{
    my ( $self, $state) = @_;
    $self->_state($state);
    $self->Notify();
}

__PACKAGE__->meta->make_immutable;

1;
