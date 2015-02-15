package Composite;
use Moose;
use Data::Printer;

extends 'Component';

has components => (is => "rw", isa => 'HashRef[Component]', default => sub {{}});

sub Operation{
    my $self = shift;
    print "operation in composite: ". $self->id ."\n";
    for my $component_key ( keys %{$self->components}){
        $self->components->{$component_key}->Operation();
    }
    return;
}

sub Add{
    my ($self, $component) = @_;
    $self->components->{$component->id} =  $component;
    return;
}

sub Remove{
    my ($self, $component) = @_;
    if (exists $self->components->{$component}){
        delete $self->components->{$component};
    }
    return;
}

sub GetChild{
    my ( $self, $component_id ) = @_;
    if (exists $self->components->{$component_id}){
        return $self->components->{$component_id};
    }
    return;
}

__PACKAGE__->meta->make_immutable;

1;
