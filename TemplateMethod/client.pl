#!/usr/bin/env perl

use Data::Printer;
use ConcreteClass;

my $class = ConcreteClass->new();
p $class;
p $class->TemplateMethod();
