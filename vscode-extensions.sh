#!/bin/bash

wget https://raw.githubusercontent.com/simone98dm/bootstrap-linux/settings-extensions/settings.json .
wget https://raw.githubusercontent.com/simone98dm/bootstrap-linux/settings-extensions/extensions.txt .

cat ./extensions.txt | while read line
do
   code --install-extension $line
done

cp ./settings.json ~/.config/Code/User/
