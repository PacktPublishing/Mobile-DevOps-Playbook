#!/bin/bash 
set -ex 
npm install -g appium@${appium_version} --unsafe-perm=true --allow-root 
if [ ${appium_version} = "next" ] 
then 
   appium driver install xcuitest 
   appium driver install espresso 
fi 

appium --log appium.log &>/dev/null & 