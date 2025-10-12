#!/bin/bash

readonly PROJECT_DIRECTORY="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && cd .. && pwd)"
readonly IMAGE_NAME='zephyr-tm-tc-docker-image:local'

docker buildx build --platform linux/amd64 --no-cache \
                    -f "${PROJECT_DIRECTORY}/Dockerfile" \
                    -t "${IMAGE_NAME}" \
                    "${PROJECT_DIRECTORY}"
