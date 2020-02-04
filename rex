#!/usr/bin/bash

REX_CLI_STORE_PATH="$(pwd)/node_modules/rex-cli-store/index.js"
if [ ! -z "$REX_CLI_STORE_PATH" ]; then
  node "$REX_CLI_STORE_PATH" $@
else
  echo "you need to run \$'npm install' first!"
fi

