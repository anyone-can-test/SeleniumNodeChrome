#!/bin/bash

set -e


export TAG="4.3.0-20220726"
echo "build $TAG"


./build_image.sh
./build_image_standalone.sh

pushd testcafe
export NODE_VERSION=12
./build_image.sh
popd


# push to registry

# prerequisite
# docker login docker.io
docker push anyonecantest/nodechrome:$TAG
docker push anyonecantest/testcafe:$TAG-node${NODE_VERSION}
