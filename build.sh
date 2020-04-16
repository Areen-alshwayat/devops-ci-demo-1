#! /bin/bash

# Echo this is the build script

sed -i "s?{GIT_BRANCH}?$branch?g" index.txt
sed -i "s?{GIT_REPO}?$GIT_REPO?g" index.txt




