#!/bin/bash

# --no-cache
docker build -f Dockerfile_standalone -t anyonecantest/standalone-chrome:$TAG --build-arg TAG=$TAG .
