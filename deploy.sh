#!/bin/bash

set -e

CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

cd dist

git init
git add -A
git commit -m "deploy: ($CURRENT_DATE)"
git push git@github.com:wendelfrota/wendelfrota.github.io.git master:gh-pages

cd -