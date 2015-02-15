#!/usr/bin/env perl

use Reciever;
use Invoker;
use ConcreteCommandA;
use ConcreteCommandB;
use Data::Printer;

my $reciever = Reciever->new();
my $invoker = Invoker->new(
    {
        command => ConcreteCommandA->new({reciever => $reciever}),
    }
);
p $invoker;
$invoker->Run();
$invoker->command(ConcreteCommandB->new({reciever => $reciever}));
$invoker->Run();
