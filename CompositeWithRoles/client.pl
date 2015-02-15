#!/usr/bin/env perl
use Data::Printer;
use Composite;
use Leaf;

my $top = Composite->new({id => "top"});
p $top;
$top->Add(Leaf->new({id => 'leaf1'}));
$top->Add(Leaf->new({id => 'leaf2'}));
$top->Add(Leaf->new({id => 'leaf3'}));
p $top->GetChild('leaf1');

$top->Add(Composite->new({id => 'composite1'}));
$top->GetChild('composite1')->Add(Leaf->new({id => 'leaf11'}));
p $top;
$top->Operation();
$top->Remove("leaf2");
print "\n\n";
$top->Operation();
