#!/bin/bash

mkdir src build &&

echo '{
  "extends": "ev-nodejs-config/ts.config.json"
}' > tsconfig.json &&

echo 'module.exports = require("ev-nodejs-config/jest.config.js");' > jest.config.js &&

echo '"ev-nodejs-config/prettier.config.json"' > .prettierrc &&

echo '{
  "extends": "ev-nodejs-config/eslint.config.js"
}' > .eslintrc.json &&

npm pkg set scripts.test="jest ./src" &&
npm pkg set scripts.build="rm -rf build && tsc -p tsconfig.json"
