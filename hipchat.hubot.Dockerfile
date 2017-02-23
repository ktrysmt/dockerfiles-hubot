FROM hubot:base

USER root

RUN apt-get install -y libexpat1-dev libicu-dev 

USER node

RUN echo "alias l='ls -lha'" >> ~/.bashrc
RUN mkdir /home/node/mybot  
WORKDIR /home/node/mybot
RUN echo 'Y' | yo hubot --owner=ktrysmt --name=mybot --description=mybot --adapter=hipchat

ENV PORT 9980
EXPOSE 9980

USER root

ENTRYPOINT /etc/init.d/redis-server start && bin/hubot -a hipchat
