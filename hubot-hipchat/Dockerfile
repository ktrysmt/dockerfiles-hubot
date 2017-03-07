FROM ktrysmt/nvm

LABEL maintainer "ktrysmt"

USER root

RUN apt-get install -y libexpat1-dev libicu-dev redis-server 

USER node

RUN . ~/.nvm/nvm.sh && npm i -g yo generator-hubot 

RUN mkdir /home/node/mybot  
WORKDIR /home/node/mybot

RUN . ~/.nvm/nvm.sh && echo 'Y' | yo hubot --owner=ktrysmt --name=mybot --description=mybot --adapter=hipchat

ENV PORT 5222
EXPOSE 5222

USER root

ENTRYPOINT /etc/init.d/redis-server start && . /home/node/.nvm/nvm.sh && bin/hubot -a hipchat

