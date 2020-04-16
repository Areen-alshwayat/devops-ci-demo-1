#! /bin/bash

# Echo this is the build script
echo "Running the build script..."

echo " I am $HOSTNAME."
echo "The time is $(date +%Y-%m-%d_%H-%M-%S)."
echo "The logged user is: ${USER}."
echo "CURRENT WORKING DIERCTORY IS: ${PWD} ."

sed -i "s/{/\${g" web/index.html



server=$HOSTNAME
name=$USER
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
dir=$(pwd)

sed  "s/{SERVER_NAME}/$server/g" web/index.txt  |sed  "s/{USER}/$name/g" >index.txt




