#!/bin/bash

git checkout master &&

# up version
npm version $VERSION &&
git push &&
git push --tags &&

# publish to npm
npm publish