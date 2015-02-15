package ConcreteObserver;
use Moose;
with 'Observer';

has observerState => (is => 'rw', isa => 'Str' , default => sub {""});
has subject => (is => 'rw', isa => 'Subject');

sub Update{
    my $self = shift;
    $self->observerState($self->subject->GetState());
}

__PACKAGE__->meta->make_immutable;

1;
