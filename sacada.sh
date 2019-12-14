#!/bin/bash
suena=$(rhythmbox-client --no-start --print-playing)
if [ "$suena" != "" ]
then
if [ "$suena" != " - " ]
then 
	touch /home/oscar/.playing
	ultimodisco=$(cat /home/oscar/.ultimo)
	actual=$(rhythmbox-client --no-start --print-playing-format=%at)
	if [ "$ultimodisco" != "$actual" ]
	then
		grep "$actual" /home/oscar/albumsxlinea | grep "$quien" > /home/oscar/encontrarlo 
		awk 'BEGIN {FS="file...."}; {print $2}' encontrarlo > /home/oscar/ruta
		imagen=$(awk 'BEGIN {FS="..s"}; {print $1}' /home/oscar/ruta)
		convert /home/oscar/.cache/rhythmbox/album-art/$imagen  -scale 550x496\! \( +clone -flip -crop x120+0+0\! -alpha set -channel A -fx "0.10" \) -append /home/oscar/portacd.png 
		convert  -resize 96x96 /home/oscar/.cache/rhythmbox/album-art/$imagen /home/oscar/miniporta.jpg
		echo $actual > /home/oscar/.ultimo
	fi
else
	if [ -f /home/oscar/.playing ]
	then 
		rm /home/oscar/.playing
	fi
fi
else
	if [ -f /home/oscar/.playing ]
	then 
		rm /home/oscar/.playing
	fi
fi
