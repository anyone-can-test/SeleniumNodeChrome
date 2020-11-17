#!/bin/bash

set -e


export TAG=86.0
echo "build $TAG"


./build_image.sh
./build_image_standalone.sh

pushd testcafe
./build_image.sh
popd


# push to registry

# prerequisite
# docker login docker.io
docker push anyonecantest/nodechrome:$TAG
docker push anyonecantest/testcafe:$TAG
