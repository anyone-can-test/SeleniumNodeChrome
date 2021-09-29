#!/bin/bash

# --no-cache
docker build -f Dockerfile_standalone -t anyonecantest/standalone-chrome:${TAG}-yarn2 --build-arg TAG=$TAG .
