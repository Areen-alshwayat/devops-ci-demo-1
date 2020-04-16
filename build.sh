#! /bin/bash

# Echo this is the build script
echo "Running the build script..."

echo " I am $HOSTNAME."
echo "The time is $(date +%Y-%m-%d_%H-%M-%S)."
echo "The logged user is: ${USER}."
echo "CURRENT WORKING DIERCTORY IS: ${PWD} ."

server=$HOSTNAME
name=$USER
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
dir=$(pwd)
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

sed  "s/{SERVER_NAME}/$server/g" web/index.txt  |sed  "s/{USER}/$name/g" >index.txt
sed -i  "s/{TIMESTAMP}/$timestamp/g" index.html
sed -i  "s/{SERVER_NAME}/$server/g"  index.html


