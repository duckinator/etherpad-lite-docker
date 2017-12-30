FROM alpine:3.6

RUN apk add --no-cache git bash shadow nodejs nodejs-npm curl

RUN useradd --create-home --shell /bin/bash etherpad

USER etherpad

RUN cd /home/etherpad && git clone git://github.com/ether/etherpad-lite.git

EXPOSE 9001

ENTRYPOINT ["/home/etherpad/etherpad-lite/bin/run.sh"]
