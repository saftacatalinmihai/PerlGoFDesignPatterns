package AbstractClass;
use Moose::Role;

requires qw/PrimitiveOperation1 PrimitiveOperation2/;

sub TemplateMethod{
    my $self = shift;
    my $result1 = $self->PrimitiveOperation1();
    my $result2 = $self->PrimitiveOperation2();

    return {
        result1 => $result1,
        result2 => $result2,
    }
}

1;
