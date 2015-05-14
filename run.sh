#!/bin/bash

if [ ! -z `docker ps --all=true --quiet --filter=name=digikam` ] ; then
    echo "Container 'digikam' already exists, starting it"
    docker start digikam
else
    echo "Container 'digikam' doesn't exist yet, creating and starting it"
    docker run \
        -it \
        --user user-dk \
        --name digikam \
        -v ${HOME}/Pictures/digikam:/home/user-dk/Pictures \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=$DISPLAY \
        silvavlis/digikam
fi
