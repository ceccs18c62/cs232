#!/bin/bash

tr  '\n' ' ' < result_cs.txt > result_1.txt
sed 's/\t//g' result_1.txt > result_2.txt
awk '{$1=$1;print}' result_2.txt > result_1.txt
sed 's/CHN/\nCHN/g' result_1.txt > result_2.txt
tr  ',' ' ' < result_2.txt > result.txt

# Convert Grades to Grade Points 
sed -i 's/(O)/ 10/g' result.txt
sed -i 's/(A+)/ 9/g' result.txt
sed -i 's/(A)/ 8.5/g' result.txt
sed -i 's/(B+)/ 8/g' result.txt
sed -i 's/(B)/ 7/g' result.txt
sed -i 's/(C)/ 6/g' result.txt
sed -i 's/(P)/ 5/g' result.txt
sed -i 's/(F)/ 0/g' result.txt
sed -i 's/(FE)/ 0/g' result.txt
sed -i 's/(I)/ 0/g' result.txt
sed -i 's/(Absent)/ 0/g' result.txt
 
awk  '{  
	print $1,$3,$5,$7,$9,$11,$13,$15,$17,$19
 }' result.txt > gp.txt 

# Computes CGPA and counts subjects failed in
awk '{
	s = 0
	f = 0
	fails = 0
	for(var =2; var<=NF; var++)
	{	
		if($var == 0) 
		{
			f = 1
			fails = fails + 1
		}
		s += $var
	}
	cgpa = s/9
	if (f == 0) {	
	 	printf("%s %0.2f\n",$1,cgpa)
	}
	if (f == 1) {
		printf("%s failed in %d\n",$1,fails)
	}
}' gp.txt > cgpa_raw.txt

join students.txt  cgpa_raw.txt > cgpa.txt

