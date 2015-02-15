package Context;
use utf8;
use Moose;

has 'strategy' => ( is => 'rw', isa => 'Strategy');

sub ContextInterface{
    my $self = shift;
    return $self->strategy->AlgorithmInterface();
}

__PACKAGE__->meta->make_immutable;

1;
