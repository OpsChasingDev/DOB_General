# checks processes running for the current user and prints processes to console

#!/bin/bash
echo -n "Sort process output by CPU (c) or memory (m)?"
read sort
echo -n "Number of results to display?"
read lines

echo $sort
echo $lines