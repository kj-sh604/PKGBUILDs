#!/bin/bash
theme_file="/usr/share/icons/elementary-xfce/index.theme"
new_inherits="Inherits=elementary,Yaru-wartybrown-dark,Yaru-wartybrown,Yaru-dark,Yaru,Mint-Y,Mint-X,Moka,Faba,kora,Humanity,gnome,Adwaita,breeze,Tango,hicolor"

if [[ -f "$theme_file" ]]; then
    sed -i "s/^Inherits=.*/$new_inherits/" "$theme_file"
fi
