#!/usr/bin/env sh

echo "Node ⬢"

nvm install 10
nvm alias default 10

echo "Installing latest npm"

npm install -g npm@latest

echo "Installing global dependencies"

npm install -g pure-prompt
npm install -g browser-sync
npm install -g nodemon
npm install -g scriptpal
npm install -g commitpal

echo "Node finished ⬢"
