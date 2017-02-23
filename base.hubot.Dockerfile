FROM node:6

USER root

RUN apt-get update -y
RUN apt-get install -y redis-server 
RUN npm i -g yo generator-hubot hubot-hipchat

# ENV PORT 9980
# EXPOSE 9980
#
# RUN /etc/init.d/redis-server start
# ENTRYPOINT ["bin/hubot", "-a", "hipchat"]
