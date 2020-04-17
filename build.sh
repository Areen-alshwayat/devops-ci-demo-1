#! /bin/bash

# Echo this is the build script


  sed -i "s/{/\${/g" web/index.html

sed -i "s?{GIT_BRANCH}?$branch?g" .web/index.txt
sed -i "s?{GIT_REPO}?$GIT_REPO?g" .web/index.txt
sed -i "s/{AZURE_VARIABLE}/$AZURE_VARIABLE/g" .web/index.txt


