#!/bin/bash

# prerequisite
# ../build_image.sh

# --no-cache
docker build -t anyonecantest/testcafe:${TAG}-yarn2 --build-arg TAG=${TAG}-yarn2 .
