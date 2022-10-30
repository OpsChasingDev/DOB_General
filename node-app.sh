#!/bin/bash

# install nodejs and npm
apt install nodejs -y
apt install npm -y

# print installed versions of both apps
NodeVersion=$(nodejs --version)
NpmVersion=$(npm --version)

echo "Installed Node version $NodeVersion"
echo "Installed Npm version $NpmVersion"

# install curl and netstat
apt install curl -y
apt install net-tools -y

# make new directory for project files
mkdir /etc/NodeJS

# download project artifact and save in user Downloads folder
curl https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz --output /etc/NodeJS/bootcamp-node-envvars-project-1.0.0.tgz

# extract downlaoded artifacts
tar -xf /etc/NodeJS/bootcamp-node-envvars-project-1.0.0.tgz -C /etc/NodeJS/

# nav to unpacked directory
cd /etc/NodeJS/package

# set env variables
export APP_ENV=dev
export DB_PWD=mysecret
export DB_USER=myuser

# running NodeJS application in background
npm install
node server.js &

# show nodejs process running and is listening on port 3000
ps aux | grep node
netstat -lp | grep :3000