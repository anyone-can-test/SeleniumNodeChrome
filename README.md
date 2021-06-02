# SeleniumNodeChrome
Docker for Selenium node Chrome

Base Selenium Docker
* https://hub.docker.com/r/selenium/node-chrome/
* https://github.com/SeleniumHQ/docker-selenium

## Docker Hub
Selenium: https://hub.docker.com/r/anyonecantest/nodechrome

Testcafe: https://hub.docker.com/r/anyonecantest/testcafe/tags

## How to use
### Precondition
1. Install Docker

### Hub
1. execute run_hub.sh (can change hub port, default: 7711)

### Chrome Node 

You can run Chrome node in several machines.
You can run multiple Chrome node in the same host, with different port.

1. build_image.sh (creates a image)
2. modify configurations in run_chrome_node.sh 
3. execute run_chrome_node.sh
4. crontab
```
# selenium node restart
20 0 * * * cd [dir] && ./run_chrome_node.sh
``` 
