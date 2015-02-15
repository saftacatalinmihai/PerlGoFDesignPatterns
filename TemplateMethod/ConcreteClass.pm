package ConcreteClass;
use Moose;

with 'AbstractClass';

sub PrimitiveOperation1{
    my $self = shift;
    return 42;
}

sub PrimitiveOperation2{
    my $self = shift;
    return  17;
}

__PACKAGE__->meta->make_immutable;

1;
