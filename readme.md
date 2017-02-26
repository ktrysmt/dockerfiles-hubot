# dockerfile-hubot

> Dockerfiles for hubot with adapters to easy development. 

## Motivation
Should be fix runtime statement and dependencies of modules.

## Usage

### Build 

```
docker build -t ktrysmt/hubot-base -f base/Dockerfile .
docker build -t ktrysmt/hubot-hipchat -f hipchat/Dockerfile .
```

### Run the `hubot-hipchat` container

```
docker run -e HUBOT_HIPCHAT_JID="00000_0000000@chat.hipchat.com" \
           -e HUBOT_HIPCHAT_PASSWORD="password" \
           -e HUBOT_HIPCHAT_ROOMS="00000_development@conf.hipchat.com" \
           -e HUBOT_LOG_LEVEL="debug" \
           -p 9980:9980 -t -d ktrysmt/hubot-hipchat
```

### Run the `hubot-slack` container

WIP.

## Author

[ktrysmt](https://github.com/ktrysmt)

## License

MIT
