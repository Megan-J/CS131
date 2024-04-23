#!/bin/bash

for i in {2008..2021}; do 
	sameyear=$(grep $i sortedDifferences.txt | awk -F ":" 'BEGIN {samecount=0} {if($2==0) samecount++} END {print samecount}');
	total=$(grep $i sortedDifferences.txt | wc -l);	
	dif=$((total-sameyear));
	echo $i,$sameyear,$dif;
done

