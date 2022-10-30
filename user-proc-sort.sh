# checks processes running for the current user and prints processes to console

#!/bin/bash
echo -n "Sort process output by CPU (c) or memory (m)?"

read sort

echo -n "Number of results to display?"

read lines



if [ "$sort" = "m" ]

then

 echo "sorting by memory"

 ps aux --sort -rss | grep 'robert'

elif [ "$sort" = "c" ]

then

 echo "sorting by cpu"

 ps aux --sort -%cpu | grep 'robert'

else

 echo "no input was provided"

fi

