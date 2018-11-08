#!/usr/bin/perl -w

use strict;
use warnings;

print("Please the cutoff for the prime numbers : \n");
my $val=<STDIN>;

my @arr=();
my $num=$val;
my $indx=0;

for($indx=0;$indx<$num;$indx++)
{
	$arr[$indx]=1;
}
	
my $ji=0;
my $je=0;
my $ki=2;

for($ji=2;$ji*$ji<=$val;$ji++)
{
	if($arr[$ji]==1)
	{
		for($je=(2*$ji);$je<=$val;$je=$je+$ji)
		{
			$arr[$je]=0;
		}
	}
}

for($ki;$ki<=$val;$ki++)
{
	if($arr[$ki]==1)
	{
		print($ki);
		print("\n");
	}
}