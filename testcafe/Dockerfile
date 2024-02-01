ARG TAG=latest
FROM anyonecantest/nodechrome:$TAG
MAINTAINER hyunil.shin <hyunil.shin@nhn.com>
ARG NODE_MAJOR=20

USER root

# https://github.com/nodesource/distributions/blob/master/README.md
#RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -
#RUN apt-get -y install nodejs


RUN apt-get update && sudo apt-get install -y ca-certificates curl gnupg
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && sudo apt-get install nodejs -y


# install yarn
#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
#RUN apt-get update -y && apt-get install -y  yarn

###
USER seluser
