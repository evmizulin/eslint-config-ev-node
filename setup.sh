#!/bin/bash

mkdir -p src build &&

echo '{
  "extends": "eslint-config-ev-node/ts.config.json"
}' > tsconfig.json &&

echo 'module.exports = require("eslint-config-ev-node/jest.config.js");' > jest.config.js &&

echo '"eslint-config-ev-node/prettier.config.json"' > .prettierrc &&

echo '{
  "extends": "ev-node"
}' > .eslintrc.json &&

npm pkg set scripts.test="jest ./src" &&
npm pkg set scripts.build="rm -rf build && tsc -p tsconfig.json"
