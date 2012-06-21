#!/bin/bash

cd /tmp/

wget http://www.culturamix.com/wp-content/uploads/2009/10/vampeta-3.jpg -c -q

### gnome2 ###
#Centraliza a imagem.
gconftool-2 --type str --set /desktop/gnome/background/picture_options centered
#Muda o wallpaper
gconftool-2 --type str --set /desktop/gnome/background/picture_filename /tmp/vampeta-3.jpg

### gnome3 ###
gsettings set org.gnome.desktop.background picture-options "centered"
gsettings set org.gnome.desktop.background picture-uri file:///tmp/vampeta-3.jpg
