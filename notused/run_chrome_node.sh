#!/bin/bash

#################################################
# configuration: You should change.

# node
NODE_IP=xx.xx.xx.xx    		# node ip (this machine)
NODE_PORT=5555			  	# node port, hub와의 통신에 사용됨

# hub
HUB_IP=xx.xx.xx.xx
HUB_PORT=7711

# how many browsers can run in parallel at a time
NUM_OF_EXECUTORS=3



#################################################

# if exist, stop/rm the container
CONTAINER_NAME=MyChromeNode
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

# run chrome node
docker run -d -p $NODE_PORT:$NODE_PORT  -e NODE_MAX_INSTANCES=$NUM_OF_EXECUTORS -e NODE_MAX_SESSION=$NUM_OF_EXECUTORS --name=$CONTAINER_NAME -e HUB_HOST=$HUB_IP -e HUB_PORT=$HUB_PORT  -v /dev/shm:/dev/shm hyunilshin/nodechrome

