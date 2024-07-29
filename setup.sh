#!/bin/bash

mkdir -p src build &&

echo "console.log('Hello world');" > src/index.js &&

echo '{
  "extends": "eslint-config-ev-node/ts.config.json"
}' > tsconfig.json &&

echo 'module.exports = require("eslint-config-ev-node/jest.config.js");' > jest.config.js &&

echo '"eslint-config-ev-node/prettier.config.json"' > .prettierrc &&

echo '{
  "extends": "ev-node"
}' > .eslintrc.json &&

npm pkg set scripts.test="jest ./src" &&
npm pkg set scripts.test-debug="node --inspect-brk ./node_modules/jest/bin/jest.js --runInBand ./src" &&
npm pkg set scripts.build="rm -rf build && tsc -p tsconfig.json" &&
npm pkg set files=["build"] &&
npm pkg set main="./build/index.js"