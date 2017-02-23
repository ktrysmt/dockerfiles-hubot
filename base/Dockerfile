FROM node:6

LABEL maintainer "ktrysmt"

USER root

RUN apt-get update -y
RUN apt-get install -y redis-server 
RUN npm i -g yo generator-hubot hubot-hipchat
