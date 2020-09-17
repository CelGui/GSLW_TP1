#! /bin/bash
xls2csv Colleage.xls > converted.csv

input="/home/celgui/Documents/GSLW_TP1/converted.csv"
array=($(awk -F: '{ print $1 }' /etc/passwd ))
i=0;

while IFS= read -r line
do
        i=0
        for item in ${array[*]}
        do


                if [ "$line" = "\$item\"" ]; then
                        i=$((i+1))
                fi
        done
        if [ "$i" = 0 ]; then
                useradd $line
                mkhomedir_helper $line
        fi
done < "$input"
