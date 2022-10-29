# install latest java version
# checks the below installation:
    # verifies java was installed (use 'java -version')
    # checks if an older version of java is installed (less than v11)
    # checks if a version of java was installed (>= v11)
# each of the above checks must print their own relevant messages
# sucess is measured by the third check being true such that java v11 or higher was installed

#!/bin/bash
apt install -y default-jre

JavaVersion=$(java -version 2>&1 >/dev/null | grep "java version\|openjdk version" | awk '{print substr($3,2,2)}')

if [ "$JavaVersion" == "" ]
then
 echo "No version of java found"
elif [ "$JavaVersion" == "1." ]
then
 echo "A version of java older than 11 is installed"
elif [ "$JavaVersion" -ge 11 ]
then
 echo "Java version 11 or greater installed"
fi