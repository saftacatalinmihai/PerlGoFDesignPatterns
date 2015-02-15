package Context;
use Data::Printer;
use utf8;
use Moose;

has state => (is => 'rw', isa => "State");

sub request{
    my $self = shift;
    $self->state->handle()
}

__PACKAGE__->meta->make_immutable;

1;
