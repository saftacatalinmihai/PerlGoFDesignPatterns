#!/usr/bin/env perl

use Context;
use ConcreteStateA;
use ConcreteStateB;

my $stateA = ConcreteStateA->new();
my $stateB = ConcreteStateB->new();

my $context = Context->new({state => $stateA});
p $context;
$context->request();

$context->state($stateB);
p $context;
$context->request();
