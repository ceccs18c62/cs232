#!/usr/bin/perl

#introduction to perl
print "hello world\n";


#perl syntax 
$a = "my name";
print "enter a name\n";
$b = <STDIN>;
$c = $a." is ".$b;
print "$c\n";


#difference b/w single and double quote
$new = "perl";
$newA = "$new";
$newB = '$new';
print "$newA $newB\n";


#arithmatic operation
print "enter any two integer to perform arithmatic operation\n";
$x = <STDIN>;
$y = <STDIN>;
$z =$x+$y;
$w =$x*$y;
$v =$x/$y;
$u =$x-$y;
print "$x+$y=$z\n$x*$y=$w\n$x/$y=$v\n$x-$y=$u\n";
print "\n";


#if-else condition
print "enter a integer to check whether it is +ve or -ve no.\n";
$d=<STDIN>;
if($d==0){
print "neither +ve nor -ve\n";
}
elsif($d<0){
print "it is -ve no.\n";
}
else{
print"it is +ve no.\n";
}
print"\n";


#loop
print "LOOP & ARRAY\n";
print"\n";
@exa =(1..10);
for($i=0;$i<10;$i++){
print "the array index $i value is $exa[$i]\n";
print"\n";
}
print"\n";

#array
print "ARRAY OPERATIONS\n";
print "\n";
@array=("perl","c++","java","python");
@num=(1..10);
print "ARRAY=@array\nARRAY2=@num\n";
print"first elemnt: $array[0]\n";
print"last elemnt: $array[-1]\n";

#inserting element
push(@array,"SQL");
#insert at begining
unshift(@array,"HTML");
print "@array\n";

#removing element
$popped = pop(@array);
$popp = shift(@array);
print "$popped\n$popp\n"


