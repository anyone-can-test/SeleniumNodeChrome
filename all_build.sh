#!/bin/bash

set -e


export TAG="134.0-20250525"
# https://github.com/SeleniumHQ/docker-selenium/releases/tag/4.18.0-20240220
echo "build $TAG"
cho "TAG=${TAG}" >> $GITHUB_ENV

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
