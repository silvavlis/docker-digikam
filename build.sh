#!/bin/bash

docker build --tag silvavlis/digikam:4.9 .
docker tag -f silvavlis/digikam:4.9 silvavlis/digikam:latest
