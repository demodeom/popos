#!/bin/bash

source ~/.bashrc
nvm use 8
gitbook build
rm -rf ./docs
mv ./_book ./docs
git add .
git commit -m 'update'
git pull
git push