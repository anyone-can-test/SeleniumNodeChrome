#!/bin/bash

# --no-cache
docker build -t anyonecantest/nodechrome:$TAG --build-arg TAG=$TAG  .
