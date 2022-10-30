# checks processes running for the current user and prints processes to console

#!/bin/bash
echo -n "Sort process output by CPU (c) or memory (m)?"
read sort
echo -n "Number of results to display?"
read lines

if [ "$sort" = "m" ]
then
 echo "sorting by memory"
 ps aux --sort -%mem | grep $USER | head -n $lines
elif [ "$sort" = "c" ]
then
 echo "sorting by cpu"
 ps aux --sort -%cpu | grep $USER | head -n $lines
else
 echo "Input must be a 'c' or 'm'"
fi