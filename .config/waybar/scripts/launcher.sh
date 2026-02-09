#!/bin/bash

# if [[ ! $(pidof rofi) ]]; then
if [[ ! $(pidof fuzzel) ]]; then
  # rofi -show drun -config ~/.config/rofi/menu.rasi
  fuzzel --config ~/.config/fuzzel/launcher.ini
else
  # pkill rofi
  pkill fuzzel
fi
