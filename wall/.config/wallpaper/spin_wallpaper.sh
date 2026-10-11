#! /usr/bin/env bash

 wall=/home/cris/Imagens/wallpaper/images/

while [ 1 ]; do
  for i in $wall*; do
	  /home/cris/awww/target/release/awww img $i -t random 
    sleep 45 
  done
done
