#!/usr/bin/env perl

use Reciever;
use Invoker;
use ConcreteCommandA;
use ConcreteCommandB;
use Data::Printer;

my $reciever = Reciever->new();
my $invoker = Invoker->new(
    {
        command_a => ConcreteCommandA->new({reciever => $reciever}),
        command_b => ConcreteCommandB->new({reciever => $reciever}),
    }
);
p $invoker;
$invoker->Do_a();
$invoker->Do_b();
# my $reciever = Reciever->new();1

1;
