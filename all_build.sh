#!/bin/bash

set -e


export TAG="143.0-20251212"
# export TAG="124.0-20250707" --> (ppp) 124버전 크롬
# https://github.com/SeleniumHQ/docker-selenium/releases/tag/4.20.0-20240505
echo "build $TAG"
echo "TAG=${TAG}" >> $GITHUB_ENV

./build_image.sh
./build_image_standalone.sh

pushd testcafe
export NODE_VERSION=20
echo "NODE_VERSION=${NODE_VERSION}" >> $GITHUB_ENV
./build_image.sh
popd

# push to registry

# prerequisite
# docker login docker.io
docker push anyonecantest/nodechrome:$TAG
docker push anyonecantest/testcafe:$TAG-node${NODE_VERSION}

# check
#docker run anyonecantest/testcafe:$TAG-node${NODE_VERSION} 'node --version'
