#!/usr/bin/bash
# Use m in sxiv to mark the files

sxiv $1 -ot | xargs -i cp {} $2
