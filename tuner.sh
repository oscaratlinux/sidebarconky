#!/bin/bash

last=$(cat /home/oscar/radioplay)
if [ "$last" != "" ] 
then
	pkill -n mpv
fi
 
ultima=$(cat /home/oscar/lastradio)
echo $ultima
rad=$(head -"$ultima" radiolist | tail -1 | cut -d@ -f 1)
link=$(head -"$ultima" radiolist | tail -1 | cut -d@ -f 2)
echo $rad > radioplay
echo $link
mpv $link > radiosong
cd