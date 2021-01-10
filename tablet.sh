#!/bin/sh

#restrict graphic tablet to one monitor when using dual monitor
MONITOR="DP-1"
PAD_NAME='HUION Huion Tablet Pen'

#undo
#xsetwacom --set "$PAD_NAME" Button 1 "key +ctrl +z -z -ctrl" 

#define next 2 however you like, I have mine mapped for erase in krita
#xsetwacom --set "$PAD_NAME" Button 2 "key e"
#xsetwacom --set "$PAD_NAME" Button 3 "key h"

ID_STYLUS=$(xinput | grep "Tablet Pen Pen" | cut -f 2 | cut -c 4-5)

xinput map-to-output $ID_STYLUS $MONITOR

exit 0
