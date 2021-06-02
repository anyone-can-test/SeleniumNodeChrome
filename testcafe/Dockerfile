ARG TAG=latest
FROM anyonecantest/nodechrome:$TAG
MAINTAINER hyunil.shin <hyunil.shin@nhn.com>

USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
# ffmpeg
RUN sudo apt-get update
RUN sudo apt-get install -y software-properties-common && sudo add-apt-repository universe && sudo apt upgrade 
RUN sudo apt-get install -y nodejs ffmpeg

# install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get install -y  yarn

###
USER seluser
