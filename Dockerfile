FROM selenium/node-chrome:3.141.59-20201010
# https://github.com/SeleniumHQ/docker-selenium
MAINTAINER hyunil.shin <hyunil.shin@nhnent.com>

USER root

RUN  echo "deb http://ftp.daumkakao.com/ubuntu xenial main universe\n" > /etc/apt/sources.list \
  && echo "deb http://ftp.daumkakao.com/ubuntu xenial-updates main universe\n" >> /etc/apt/sources.list \
  && echo "deb http://security.ubuntu.com/ubuntu xenial-security main universe\n" >> /etc/apt/sources.list


#=========================================== 
# set locale ko_KR
RUN apt-get update
RUN apt-get install -y language-pack-gnome-ko language-pack-gnome-en
RUN locale-gen ko_KR.UTF-8
ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8


#==========================================
# add Korean font
RUN apt-get install -y fontconfig
RUN mkdir -p /usr/share/fonts/nanumfont
COPY nanum_font/*.ttf /usr/share/fonts/nanumfont/
RUN fc-cache -f -v


#==========================================
# time and date
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
ENV TZ=Asia/Seoul
RUN echo "Asia/Seoul" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
RUN date


###
USER seluser
