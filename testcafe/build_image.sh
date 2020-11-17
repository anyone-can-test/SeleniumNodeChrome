#!/bin/bash

# prerequisite
# ../build_image.sh

# --no-cache
docker build -t anyonecantest/testcafe:$TAG --build-arg TAG=$TAG .
