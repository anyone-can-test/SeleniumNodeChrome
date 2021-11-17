ARG TAG=latest
FROM anyonecantest/nodechrome:$TAG
MAINTAINER hyunil.shin <hyunil.shin@nhn.com>

USER root

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get -y install nodejs


# install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -y && apt-get install -y  yarn 

### install ffmpeg
RUN set -x && add-apt-repository ppa:mc3man/trusty-media
RUN apt-get update && apt-get dist-upgrade
RUN apt-get install -y --no-install-recommends ffmpeg
        
###
USER seluser
