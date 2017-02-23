FROM node:6

USER root

LABEL maintainer "ktrysmt"

RUN apt-get update -y
RUN apt-get install -y redis-server 
RUN npm i -g yo generator-hubot hubot-hipchat

