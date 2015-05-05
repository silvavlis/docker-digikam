#!/bin/bash

docker run --user user-dk --name digikam -it -v ${HOME}/Pictures/digikam:/home/user-dk/Pictures -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY silvavlis/digikam
