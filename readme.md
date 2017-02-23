## Dockerfile for hubot-hipchat

## Usage

### Build 

```
docker build -t hubot:base -f base.hubot.Dockerfile .
docker build -t hubot:hipchat -f hipchat.hubot.Dockerfile .
```

### Run container

```
docker run -e HUBOT_HIPCHAT_JID="00000_0000000@chat.hipchat.com" \
           -e HUBOT_HIPCHAT_PASSWORD="password" \
           -e HUBOT_HIPCHAT_ROOMS="98250_development@conf.hipchat.com" \
           -p 9980:9980 -t -d hubot:hipchat
```

## Author

[ktrysmt](https://github.com/ktrysmt)

## License

MIT
