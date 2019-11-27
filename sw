#!/usr/bin/bash

if [ -z $(pwd | grep "mobile") ]; then
  cd "$(pwd)-mobile"
else
  cd "$(pwd | sed -e 's/\-mobile//')"
fi
