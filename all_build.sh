#!/bin/bash

set -e


export TAG="4.8.3-20230328"
# https://github.com/SeleniumHQ/docker-selenium/releases/tag/4.17.0-20240123
echo "build $TAG"


./build_image.sh
./build_image_standalone.sh

pushd testcafe
export NODE_VERSION=18
./build_image.sh
popd


# push to registry

# prerequisite
# docker login docker.io
docker push anyonecantest/nodechrome:$TAG
docker push anyonecantest/testcafe:$TAG-node${NODE_VERSION}
