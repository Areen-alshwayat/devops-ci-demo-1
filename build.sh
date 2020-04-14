#! /bin/bash

# Echo this is the build script
echo "Running the build script..."

echo " I am $HOSTNAME."
echo "The time is $(date ‘%s’)."
echo "The logged user is: ${USER}."
echo "CURRENT WORKING DIERCTORY IS: ${PWD} ."

server=$HOSTNAME
name=$USER
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
DIR=$(pwd)
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

sed  "s/{SERVER_NAME}/$server/g" web/indx.txt  |sed  "s/{USER}/$name/g" >indx.txt
sed -i "s/{TIMESTAMP}/$timestamp/g" indx.txt
sed -i "s?{GIT_BRANCH}?$branch?g" indx.txt
sed -i "s?{GIT_REPO}?$GIT_REPO?g" indx.txt
sed -i "s/{AZURE_VARIABLE}/$AZURE_VARIABLE/g" indx.txt


sed  "s~{PWD}~$DIR~g" indx.txt>web/index.html

