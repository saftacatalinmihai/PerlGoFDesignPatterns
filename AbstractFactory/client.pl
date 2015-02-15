#!/usr/bin/env perl
use Data::Printer;
use utf8;
use Client;
use ConcreteFactory1;
use ConcreteFactory2;

my $factory1 = ConcreteFactory1->new();
my $factory2 = ConcreteFactory2->new();


my $client = Client->new({factory => $factory1});
p $client;

my $productA = $client->productA;
p $productA;

my $productB = $client->productB;
p $productB;

my $client = Client->new({factory => $factory2});
p $client;

my $productA = $client->productA;
p $productA;

my $productB = $client->productB;
p $productB;
