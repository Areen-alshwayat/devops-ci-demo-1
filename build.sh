#! /bin/bash

# Echo this is the build script


envsubst '$GIT_REPO $GIT_BRANCH $AZURE_VARIABLE'>web/index.html
