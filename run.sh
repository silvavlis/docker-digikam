#!/bin/bash

if [ ! -z `docker ps --all=true --quiet --filter=name=digikam` ] ; then
    docker start digikam
    exit 0
fi
docker run --user user-dk --name digikam -it -v ${HOME}/Pictures/digikam:/home/user-dk/Pictures -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY silvavlis/digikam
