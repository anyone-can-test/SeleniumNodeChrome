#!/bin/bash

set -e


export TAG="3.141.59-20210804"
echo "build $TAG"


./build_image.sh
./build_image_standalone.sh

pushd testcafe
./build_image.sh
popd


# push to registry

# prerequisite
# docker login docker.io
docker push anyonecantest/nodechrome:${TAG}-yarn2
docker push anyonecantest/testcafe:${TAG}-yarn2
