FROM ubuntu:16.04

LABEL maintainer "kotaro.yoshimatsu@gmail.com"

USER root

RUN apt-get update -y && apt-get install -y git curl 
RUN useradd -d /home/node -m -s /bin/bash node

USER node

ARG NODE_VERSION
ENV NODE_VERSION $NODE_VERSION
ENV HOME /home/node
ENV NVM_DIR $HOME/.nvm

WORKDIR $HOME

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash 
RUN . $HOME/.nvm/nvm.sh && nvm install $NODE_VERSION 

ENV PATH $HOME/.nvm/versions/node/v$NODE_VERSION/bin:$PATH
