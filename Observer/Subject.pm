package Subject;
use Moose::Role;

has observers => (is => 'rw', isa => 'HashRef[Observer]', default => sub {{}});

sub Attach{
    my ($self, $observer) = @_;
    $self->observers->{$observer->id} = $observer;
    $observer->subject($self);
}

sub Detach{
    my ($self, $observer) = @_;
    if (exists $self->observers->{$observer->id}){
        delete $self->observers->{$observer->id};
    }
}

sub Notify{
    my $self = shift;
    for my $observer_id (keys %{$self->observers}){
        $self->observers->{$observer_id}->Update();
    }
}

1;
