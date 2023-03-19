#!/bin/bash

set -e


export TAG="4.8.1-20230306"
# https://github.com/SeleniumHQ/docker-selenium/releases/tag/4.8.1-20230306
echo "build $TAG"


./build_image.sh
./build_image_standalone.sh

pushd testcafe
export NODE_VERSION=14
./build_image.sh
popd


# push to registry

# prerequisite
# docker login docker.io
docker push anyonecantest/nodechrome:$TAG
docker push anyonecantest/testcafe:$TAG-node${NODE_VERSION}
