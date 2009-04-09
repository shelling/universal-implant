use lib qw(lib t/lib);
use Test::More "no_plan";
use UNIVERSAL::implant;

package Cat;

package Foo;
sub foo {"foo"}
sub bar {"bar"}

package main;

Cat->implant(qw(Foo));

can_ok("Cat",qw(foo bar));
