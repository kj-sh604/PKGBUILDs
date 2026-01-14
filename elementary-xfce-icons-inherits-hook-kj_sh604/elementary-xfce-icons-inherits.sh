#!/bin/bash
theme_file="/usr/share/icons/elementary-xfce/index.theme"
new_inherits="Inherits=elementary,Adwaita,AdwaitaLegacy,hicolor,gnome"

if [[ -f "$theme_file" ]]; then
    sed -i "s/^Inherits=.*/$new_inherits/" "$theme_file"
fi
