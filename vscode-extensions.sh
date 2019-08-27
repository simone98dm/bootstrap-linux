#!/bin/bash

curl https://raw.githubusercontent.com/simone98dm/bootstrap-linux/master/extensions.txt
cat ./extensions.txt | while read line
do
   code --install-extension $line
done

cp ./settings.json ~/.config/Code/User/
