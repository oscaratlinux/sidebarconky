# sidebarconky
a sidebar for conky

A music player status for conky (see the screenshot)

A conky configuration to show music playing. It supports 2 options:

current track playing in Rhythmbox, including album art if avaliable
internet radio currently playing with mpv

Requirements:

* Rhythmbox: to play your music
* rhythmbox-client: tool to retrieve info from Rhythmbox
* mpv: to play internet radios
* imagemagick: for the album art
* hexdump: to convert the rhythmbox album tdb base to ascii and search for the covers

Files:

* tuner.sh - script to play a internet radio station from a list stored in a file
* actualizarbase.sh - script to convert the rhythbox tdb base to ascii (must be run the first time, then whenever you add more album covers to rhythmbox)
* sacada.sh - script to get the info from the current track playing in rhythmbox and search for the album cover
* minibar.conkyrc - conky configuration file
