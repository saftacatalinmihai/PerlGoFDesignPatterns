#!/usr/bin/env perl

use utf8;
use Data::Printer;
use Context;
use ConcreteStrategyA;
use ConcreteStrategyB;
use ConcreteStrategyC;

my $context = Context->new({strategy => ConcreteStrategyA->new()});
p $context;
$context->ContextInterface();
