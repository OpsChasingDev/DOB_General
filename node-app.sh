#!/bin/bash

# read user input for log location
echo "Provide a directory for logs (absolutely path): "
read LOG_DIR

# set service user to use for running application
NEW_USER=usernodejs
useradd $NEW_USER -m

# install nodejs, npm, curl, and net-tools
apt install nodejs -y
apt install npm -y
apt install curl -y
apt install net-tools -y

# print installed versions of both apps
NodeVersion=$(nodejs --version)
NpmVersion=$(npm --version)

echo "Installed Node version $NodeVersion"
echo "Installed Npm version $NpmVersion"

# make new directory for project files
mkdir /etc/NodeJS -p
chown $NEW_USER -R /etc/NodeJS

# download project artifact and save in /etc/NodeJS
runuser -l $NEW_USER -c "curl https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz --output /etc/NodeJS/bootcamp-node-envvars-project-1.0.0.tgz"

# extract downloaded artifacts
runuser -l $NEW_USER -c "tar -xf /etc/NodeJS/bootcamp-node-envvars-project-1.0.0.tgz -C /etc/NodeJS/"

# set up the log directory for the application
if [ -d $LOG_DIR ]
then
 echo "Directory $LOG_DIR already exists and will be used for logs."
else
 mkdir -p $LOG_DIR
 echo "Directory $LOG_DIR has been created and will be used for logs."
fi

# make service account owner of log directory
chown $NEW_USER -R $LOG_DIR

# set env variables, navigate to package, and start application under the service user
runuser -l $NEW_USER -c "
export APP_ENV=dev &&
export DB_PWD=mysecret &&
export DB_USER=myuser &&
export LOG_DIR=$LOG_DIR &&
cd /etc/NodeJS/package &&
npm install &&
node server.js &"

# show nodejs process running and is listening on port 3000
ps aux | grep node
netstat -lp | grep :3000