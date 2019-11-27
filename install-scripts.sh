#!/usr/bin/bash

mkdir ~/scripts
echo 'export PATH="$PATH:$HOME/scripts"' >> ~/.bashrc
curl https://api.github.com/repos/0000marcell/scripts/contents \
| awk '/name/ { print $2 }' | tr -d '"' | tr -d ',' \
| xargs -i \
curl https://raw.githubusercontent.com/0000marcell/scripts/master/{} > \
~/scripts/{}  
ls ~/scripts | xargs -i chmod +x ~/scripts/{} 
