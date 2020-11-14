FROM anyonecantest/nodechrome:3.141.59-20201010
MAINTAINER hyunil.shin <hyunil.shin@nhn.com>

USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get -y install nodejs
RUN apt-get install -y ffmpeg

# install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y  yarn

###
USER seluser
