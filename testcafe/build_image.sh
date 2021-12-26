#!/bin/bash

# prerequisite
# ../build_image.sh

# --no-cache
echo "docker build $TAG ${NODE_VERSION}"
docker build -t anyonecantest/testcafe:$TAG-${NODE_VERSION} --build-arg TAG=$TAG --build-arg NODE_VERSION=${NODE_VERSION} .
