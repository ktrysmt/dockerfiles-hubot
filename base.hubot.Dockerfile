FROM node:6

RUN apt-get update -y
RUN apt-get install -y redis-server libexpat1-dev libicu-dev 
RUN npm i -g yo generator-hubot hubot-hipchat

# ENV PORT 9980
# EXPOSE 9980
#
# RUN /etc/init.d/redis-server start
# ENTRYPOINT ["bin/hubot", "-a", "hipchat"]
