# Digikam Dockerfile

Docker image with the latest Digikam version (4.8 at the time of this writing) containerized.

## Base Docker image

[Ubuntu Trusty](https://registry.hub.docker.com/_/ubuntu/)

## Provided scripts
 * build.sh: to create and tag the image
 * run.sh: to start a container based on the created image

## Others

### Getting graphical output in the desktop

Of all the different possibilities the selected one is mounting the `X11` socket into the container.

### Error messages
Following error message is normal if your host doesn't have a IEEE 1394 port (also known as FireWire).
    libdc1394 error: Failed to initialize libdc1394
