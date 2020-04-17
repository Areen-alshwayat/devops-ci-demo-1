#! /bin/bash

# Echo this is the build script

echo "Running the Build Sprict"
echo "I am $HOSTNAME ."
echo "the Time is $(date +%Y-%m-%d_%H-%M-%S)"
echo "the loged in user is $USER "


  sed -i "s/{/\${/g" web/index.html
envsubst '$GIT_REPO $GIT_BRANCH $AZURE_VARIABLE'>web/index.html
