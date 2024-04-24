#!/bin/bash

grep '^[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,[^,]*,United States,*' 'Global YouTube Statistics.csv' > UnitedStatesData.txt;

categories=("Music" "Entertainment" "Gaming" "Comedy");

for ((i = 0; i < ${#categories[@]}; i++)) ; do
	category_name="${categories[i]}";
	grep "^[^,]*,[^,]*,[^,]*,[^,]*,"$category_name",*" 'Global YouTube Statistics.csv' > UnitedStates/${category_name}.txt;
	echo "Number of Entries in Category: ${category_name}" >> ws5.txt;
	wc -l UnitedStates/${category_name}.txt >> ws5.txt;
done