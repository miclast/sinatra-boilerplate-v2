#!/bin/bash

mkdir app/lib/
mkdir app/models/

mkdir db/

mkdir public/css
mkdir public/img
mkdir public/font

mkdir tests/helpers/
mkdir tests/lib/
mkdir tests/models/

bundle install --without production

rm -rf .git
rm setup.sh

git init
git add .
git commit -m "Initial commit"
