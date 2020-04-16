#! /bin/bash

# Echo this is the build script


export TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
sed -i "s/{/\${/g" web/index.html
envsubst '$GIT_REPO $GIT_BRANCH $AZURE_VARIABLE > web/newIndex.html <  web/index.html
cp web/newIndex.html web/index.html
 




