# Digikam Dockerfile

Docker image with the latest Digikam version (4.11 at the time of this writing) containerized.

This container is not conceived for productive usage, but more for testing the latest Digikam version.

## Base Docker image

[Ubuntu Trusty](https://registry.hub.docker.com/_/ubuntu/)

## How to use this image

### create a Digikam container

`docker run --user user-dk --name digikam -it -v ${HOME}/Pictures/digikam:/home/user-dk/Pictures -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY silvavlis/digikam`

### start an already existing Digikam container

`docker start digikam`

## Others

### Getting graphical output in the desktop

Of all the different possibilities the selected one is mounting the `X11` socket into the container.

### Error messages
Following error message is normal if your host doesn't have a IEEE 1394 port (also known as FireWire).
`libdc1394 error: Failed to initialize libdc1394`
