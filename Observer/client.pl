#!/usr/bin/env perl

use Data::Printer;
use ConcreteSubject;
use ConcreteObserver;

my $subject = ConcreteSubject->new();

my $o1 = ConcreteObserver->new({id => 'o1'});
my $o2 = ConcreteObserver->new({id => 'o2'});
$subject->Attach($o1);
$subject->Attach($o2);
p $o1;
$subject->SetState("A");
p $o1;
p $subject;
$subject->SetState("B");
p $o1;
p $o2;
p $subject;
$subject->Detach($o2);
p $subject;
