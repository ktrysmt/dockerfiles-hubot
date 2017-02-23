FROM node:6

RUN apt-get update -y
RUN apt-get install -y redis-server libexpat1-dev libicu-dev 

# install yo
RUN npm install -g yo generator-hubot

# create hubot
WORKDIR /root
RUN mkdir mybot
WORKDIR /root/mybot
RUN yo hubot && npm install hubot-hipchat --save

# HTTP Listener listen port 9980
ENV PORT 9980
EXPOSE 9980

# run redis-server and hubot("-a hipchat")
RUN /etc/init.d/redis-server start
ENTRYPOINT ["bin/hubot", "-a", "hipchat"]
