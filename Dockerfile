FROM alpine

# install requirements
RUN apk --no-cache --update add git \
  && git clone https://github.com/urushiyama/libo.git \
  && libo/libo update > /dev/null 2>&1

ENTRYPOINT ["libo/libo"]
