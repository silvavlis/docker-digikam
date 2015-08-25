#!/bin/bash

IMAGE_NAME="silvavlis/digikam"
CONT_NAME="digikam"
USER="user-dk"

if [ -z `docker ps --all=true --quiet --filter=name=${CONT_NAME}` ] ; then
    echo "Container '${CONT_NAME}' doesn't exist yet, creating and starting it"
    docker run \
        -it \
        --user ${USER} \
        --name ${CONT_NAME} \
        -v ${HOME}/digikam-docker/Pictures:/home/${USER}/Pictures \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=$DISPLAY \
        ${IMAGE_NAME}
else
    echo "Container '${CONT_NAME}' already exists, starting it"
    docker start ${CONT_NAME}
fi
