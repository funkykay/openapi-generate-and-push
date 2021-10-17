# setup ubuntu
FROM openjdk:16-alpine3.13
RUN	apk add --no-cache \
  bash \
  ca-certificates \
  wget

# download and install openapi-generator-cli
RUN wget -q \
  -O /openapi-generator-cli.jar \
  https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.1.0/openapi-generator-cli-5.1.0.jar
RUN printf "#!/bin/bash\njava -jar /openapi-generator-cli.jar \$@" >> /bin/openapi-generator
RUN chmod +x /bin/openapi-generator

# setup actions script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
