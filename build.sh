#! /bin/bash

# Echo this is the build script
echo "Running the build script..."

echo " I am $HOSTNAME."
echo "The time is $(date ‘%s’)."
echo "The logged user is: ${USER}."
echo "CURRENT WORKING DIERCTORY IS: ${PWD} ."

server=$HOSTNAME
name=$USER
timestamp=$( date +%T )
dir=$(PWD)
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

sed  "s/{SERVER_NAME}/$server/g" web/index.txt  |sed  "s/{USER}/$name/g" >index.txt
sed -i "s/{TIMESTAMP}/$timestamp/g" index.html
sed -i "s/{SERVER_NAME}/$server/g"  index.html
sed -i "s/{AZURE_VARIABLE}/$AZURE_VARIABLE/g" index.txt



sed  "s~{PWD}~$DIR~g" indx-1.txt>web/index.html

