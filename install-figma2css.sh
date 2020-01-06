#!/usr/bin/bash

mkdir ~/scripts
if [ ! -f "~/.bashrc" ]; then
  echo "You dont have a .bashrc file in your HOME directory plz verify bash instalation aborting..."
  exit 0
fi
echo 'export PATH="$PATH:$HOME/scripts"' >> ~/.bashrc
source ~/.bashrc
npm i -g figma2css figmafetch figmaprint figmafind
CVART=(figma2cssgenerate figma2cssinstall figma2cssopen figmadata figmafiles figmafilesraw figmaopen figmaprojectsraw)
for i in "${CVART[@]}"; do 
  echo "Installing "$i" ---> ~/scripts/"$i
  curl -s https://raw.githubusercontent.com/0000marcell/scripts/master/$i > ~/scripts/$i
  chmod +x ~/scripts/$i
done
