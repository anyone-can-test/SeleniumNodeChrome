ARG TAG=latest
FROM anyonecantest/nodechrome:$TAG
MAINTAINER hyunil.shin <hyunil.shin@nhn.com>

USER root

# https://serverfault.com/questions/1145095/install-nodejs-20-on-debian-bullseye-in-docker
RUN apt-get update; apt-get install curl gpg -y; 
RUN mkdir -p /etc/apt/keyrings; 
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg; 
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list; 
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
RUN apt-get install -y nodejs;


# npm link 가 npm install 보다 빠르게 수행된다.
# git clone 사용 시 content 가 변경되어도 새로 다운로드 하지 않는다.
RUN wget https://github.com/hyunil-shin/testcafe-reporter-html/archive/refs/heads/testcafe-v3.zip -O html.zip; \
    unzip -d / html.zip; \
    mv /testcafe-reporter-html-testcafe-v3 /testcafe-reporter-html2;
RUN     cd /testcafe-reporter-html2 && \
        npm ci && \
        ./node_modules/.bin/gulp build && \
        npm link



###
USER seluser

# from https://github.com/apache/trafficcontrol/issues/6289
ENV SE_EVENT_BUS_HOST=localhost
ENV SE_EVENT_BUS_PUBLISH_PORT=4442
ENV SE_EVENT_BUS_SUBSCRIBE_PORT=4443
ENV SE_NODE_GRID_URL=http://localhost:4444


# Disable the default entry point that starts Selenium
ENTRYPOINT ["/bin/bash", "-c"]
# Just keep the container running without starting Selenium
CMD ["sleep infinity"]
