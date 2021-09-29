#!/bin/bash

# --no-cache
docker build -t anyonecantest/nodechrome:${TAG}-yarn2 --build-arg TAG=$TAG  .
