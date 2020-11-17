#!/bin/bash

# 참고. selenium timeout
# https://automatictester.wordpress.com/2015/03/01/timeouts-in-selenium-webdriver/

###############################################################################################
# Configuration
HUB_PORT=7711


###############################################################################################
# selenium hub 실행
docker run -d --name selenium-hub -e GRID_TIMEOUT=1800 -p ${HUB_PORT}:4444 selenium/hub:3.4.0-chromium 
echo "selenium hub url: http://this_host_ip:${HUB_PORT}/wd/hub"