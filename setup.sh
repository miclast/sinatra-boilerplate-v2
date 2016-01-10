#!/usr/env/bin bash

mkdir app/lib/
mkdir app/models/

mkdir db/

mkdir public/css
mkdir public/img
mkdir public/font

mkdir tests/helpers/
mkdir tests/lib/
mkdir tests/models/

bundle install

rm -rf .git

git init
git add .
git commit -m "Initial commit"

rm setup.sh