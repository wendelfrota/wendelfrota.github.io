#!/bin/bash

set -e

CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

cd dist

git init
git add -A
git commit -m "deploy: ($CURRENT_DATE)"

if git push git@github.com:wendelfrota/wendelfrota.github.io.git master:gh-pages; then
    echo "Push to the repository via SSH succeeded."
else
    echo "SSH push failed. Trying with HTTPS..."
    git push https://x-access-token:${GITHUB_TOKEN}@github.com/wendelfrota/wendelfrota.github.io.git master:gh-pages
fi

cd -