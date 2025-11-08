#! /usr/bin/env bash

 # wall=/home/cris/Imagens/wallpaper/
 wall=$HOME/Imagens/wallpaper/

while [ 1 ]; do
  for i in $wall*; do
	  swww img $i 
    sleep 45 
  done
done
