#!/bin/bash

#Obtem a mesma
cd /tmp/

wget http://www.culturamix.com/wp-content/uploads/2009/10/vampeta-3.jpg -c -q

#Centraliza a imagem.
gconftool-2 --type str --set /desktop/gnome/background/picture_options centered

#Muda o wallpaper
gconftool-2 --type str --set /desktop/gnome/background/picture_filename /tmp/vampeta-3.jpg