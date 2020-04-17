#! /bin/bash

# Echo this is the build script


  sed -i "s/{/\${/g" web/index.html

envsubst '$GIT_REPO $GIT_BRANCH $AZURE_VARIABLE' <web/index.html

sed -i "s?{GIT_BRANCH}?$branch?g" index.txt
sed -i "s?{GIT_REPO}?$GIT_REPO?g" index.txt
sed -i "s/{AZURE_VARIABLE}/$AZURE_VARIABLE/g" index.txt


