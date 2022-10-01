#!/bin/bash
function parsecsv() {
    i=0
    while read line
    do
        # read csv file
        col1=$(echo ${line} | cut -d , -f 1)
        col2=$(echo ${line} | cut -d , -f 2)
        col3=$(echo ${line} | cut -d , -f 3)
        col4=$(echo ${line} | cut -d , -f 4)
        col5=$(echo ${line} | cut -d , -f 5)
        col6=$(echo ${line} | cut -d , -f 6)
        col7=$(echo ${line} | cut -d , -f 7)
        col8=$(echo ${line} | cut -d , -f 8)
        col9=$(echo ${line} | cut -d , -f 9)
        col10=$(echo ${line} | cut -d , -f 10)
        col11=$(echo ${line} | cut -d , -f 11)
        
        
        # v2 = eval echo '$'"$2"
        # echo "${v2}"
        if [ "$col7" = "$2" ]
        then 
            echo "col2:$col2 col4:$col4 col5:$col5 col6:$col6 col7:$col7 col8:$col8 col9:$col9" >> result.txt
            ((i++))
        fi
    done < $1
    echo "the select result has $i entries"
}
# v1="ll"
#     echo "he${v1}o world!"
parsecsv $1 $2
