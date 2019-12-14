#!/bin/bash

#CONVIERTE BASE DE DATOS HEX A ASCII
hexdump -C  .cache/rhythmbox/album-art/store.tdb | cut -f2 -d\| > albums

#UNE TODAS LAS LINEAS EN 1 SOLA
cat albums | paste -sd "" > albums1linea


#CREA LINEA POR CADA ALBUM
cat albums1linea | tr '&' '\n' > albumsxlinea

