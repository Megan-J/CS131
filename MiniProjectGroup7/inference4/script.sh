#!/bin/bash
IFS=$'\r\n'
mkdir files
awk -F ',' '$2 == "Movie" {print}' netflix_titles.csv >> movies.txt
lines=$(grep -oE '(",[0-9]{4},).*' movies.txt)
for i in $lines
do
	year=$(echo $i | awk -F ',' '{print $2}')
	rating=$(echo $i | awk -F ',' '{print $3}')
	case $rating in 
		G)
                        echo $year >> files/G.txt
                        ;;
                PG)
                        echo $year >> files/PG.txt
                        ;;
                PG-13)
                        echo $year >> files/PG_13.txt
                        ;;
                R)
                        echo $year >> files/R.txt
                        ;;
		TV-14)
                        echo $year >> files/TV_14.txt
			;;
		TV-G)
                        echo $year >> files/TV_G.txt                                                
			;;
		TV-MA)
                        echo $year >> files/TV_MA.txt                                                
			;;
		TV-PG)
                        echo $year >> files/TV_PG.txt                                                
			;;
                *)
                        ;;
        esac
done

sort files/G.txt | uniq -c > files/G_sorted.txt
sort files/PG.txt | uniq -c > files/PG_sorted.txt
sort files/PG_13.txt | uniq -c > files/PG_13_sorted.txt
sort files/R.txt | uniq -c > files/R_sorted.txt
sort files/TV_14.txt | uniq -c > files/TV_14_sorted.txt
sort files/TV_G.txt | uniq -c > files/TV_G_sorted.txt
sort files/TV_MA.txt | uniq -c > files/TV_MA_sorted.txt
sort files/TV_PG.txt | uniq -c > files/TV_PG_sorted.txt
