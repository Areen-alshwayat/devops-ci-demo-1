#! /bin/bash

# Echo this is the build script

  sed -i "s/{/\${/g" web/index.html

envsubst '$GIT_REPO $GIT_BRANCH $AZURE_VARIABLE' <web/index.html


