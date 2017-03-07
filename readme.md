# dockerfile-hubot

> Dockerfiles for hubot with some adapters to easy development. 

## Motivation
It should be freeze runtime and dependencies of modules for the operational stability.

## Support adapters

- hipchat
- slack (soon)

## Requirements

- Docker 

## Usage the `hubot-hipchat` container

### Includes

- nvm
- nodejs v0.12
- yo generator-hubot hubot-hipchat
- redis-server

### Build 

```
docker build -t ktrysmt/nvm --build-arg NODE_VERSION=0.12 -f nvm/Dockerfile .
docker build -t ktrysmt/hubot-hipchat -f hubot-hipchat/Dockerfile .
```

### Run 

```
docker run -e HUBOT_HIPCHAT_JID="00000_0000000@chat.hipchat.com" \
           -e HUBOT_HIPCHAT_PASSWORD="********" \
           -e HUBOT_LOG_LEVEL="debug" \
           -p 5222:5222 -t -d ktrysmt/hubot-hipchat
```

## Usage the `hubot-slack` container

WIP.

## Author

[ktrysmt](https://github.com/ktrysmt)

## License

MIT
