#!/usr/bin/bash

mkdir ~/scripts
echo 'export PATH="$PATH:$HOME/scripts"' >> ~/.bashrc
source ~/.bashrc
CVART=$(curl -s https://api.github.com/repos/0000marcell/scripts/contents | awk '/name/ { print $2 }' | tr -d '"' | tr -d ',')
for i in "${CVART[@]}"; do 
  echo "Installing "$i" ---> ~/scripts/"$i
  curl -s https://raw.githubusercontent.com/0000marcell/scripts/master/$i > ~/scripts/$i
  chmod +x ~/scripts/$i
done
