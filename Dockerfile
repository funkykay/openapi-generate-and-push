FROM openjdk:16-alpine3.13

RUN	apk add --no-cache \
  bash \
  ca-certificates \
  wget

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
