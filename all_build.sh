#!/bin/bash

set -e

export TAG="4.18.0-20240220"
# https://github.com/SeleniumHQ/docker-selenium/releases/tag/4.18.0-20240220
echo "build $TAG"

./build_image.sh
./build_image_standalone.sh

pushd testcafe
export NODE_VERSION=20
./build_image.sh
popd

# push to registry

# prerequisite
# docker login docker.io
docker push anyonecantest/nodechrome:$TAG
docker push anyonecantest/testcafe:$TAG-node${NODE_VERSION}
