#!/bin/bash

readonly IMAGE_NAME='zephyr-tm-tc-docker-image:local'

docker run --privileged --rm -t -i -v /dev:/dev "${IMAGE_NAME}"
