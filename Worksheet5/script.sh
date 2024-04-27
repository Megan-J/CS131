#!/bin/bash

IFS=$'\r\n'
lines=$(awk -F "," '{ if($8 == "United States") print}' 'Global YouTube Statistics.csv')

for i in $lines; do
	category=$(echo "$i" | awk -F "," '{print $5}')
	if [[ $category == "Music" ]]; then
    		echo $i >> UnitedStates/Music.txt;
	elif [[ $category == "Entertainment" ]]; then
    		echo $i >> UnitedStates/Entertainment.txt;
	elif [[ $category == "Gaming" ]]; then
    		echo $i >> UnitedStates/Gaming.txt;
	elif [[ $category == "Comedy" ]]; then
    		echo $i >> UnitedStates/Comedy.txt;
	fi

done

categories=("Music" "Entertainment" "Gaming" "Comedy");

for ((i = 0; i < ${#categories[@]}; i++)) ; do
	category_name="${categories[i]}";
	echo "Number of Entries in Category: ${category_name}" >> ws5.txt;
	wc -l UnitedStates/${category_name}.txt >> ws5.txt;
done
