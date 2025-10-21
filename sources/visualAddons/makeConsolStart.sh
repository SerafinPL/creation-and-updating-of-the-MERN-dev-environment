sudo nano /etc/default/grub

GRUB_CMDLINE_LINUX_DEFAULT=""

sudo update-grub

make this


You can use xfconf-query to manually set these settings in a terminal window or script.
GTK Theme:

xfconf-query -c xsettings -p /Net/ThemeName -s THEME_NAME

Windows Manager:

xfconf-query -c xfwm4 -p /general/theme -s THEME_NAME

Background - this one is a little more complicated in that you first need to find the active path of your wallpaper xfconf setting. To do so, run the command "xfconf-query -c xfce4-desktop -mv" and change the wallpaper. In the terminal window, the path will be displayed. For example, from my system:

$ xfconf-query -c xfce4-desktop -mv
Start monitoring channel "xfce4-desktop":

set: /backdrop/screen0/monitorVirtual-1/workspace0/last-image (/home/toz/upload/1920x1080.jpg)

...so my path is:  /backdrop/screen0/monitorVirtual-1/workspace0/last-image. Therefore, to change my background, I would use the command:

 xfconf-query -c xfce4-desktop -p  /backdrop/screen0/monitorVirtual-1/workspace0/last-image -s IMAGE_FILE

You can script this to make it simpler and quicker to run. For example:

#!/bin/bash

##### GTK Theme Options
GTKTHEME[1]=Adwaita
GTKTHEME[2]=Greybird
GTKTHEME[3]=Orchis-Light
GTKTHEME[4]=Orchis-Dark

##### Window Manager Options
XFWM4THEME[1]=Default
XFWM4THEME[2]=Greybird
XFWM4THEME[3]=Orchis-Light
XFWM4THEME[4]=Orchis-Dark

##### Background Options
WALLPAPER[1]=/usr/share/backgrounds/xfce/xfce-verticals.png
WALLPAPER[2]=/usr/share/backgrounds/xfce/xfce-blue.png
WALLPAPER[3]=/home/toz/upload/2560x1440.png
WALLPAPER[4]=/home/toz/upload/1920x1080.png

##### make the changes
xfconf-query -c xsettings -p /Net/ThemeName -s ${GTKTHEME[$1]}
xfconf-query -c xfwm4 -p /general/theme -s ${XFWM4THEME[$1]}
xfconf-query -c xfce4-desktop -p  /backdrop/screen0/monitorVirtual-1/workspace0/last-image -s ${WALLPAPER[$1]}

exit 0