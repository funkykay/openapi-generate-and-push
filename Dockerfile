FROM openjdk:16-alpine3.13

RUN	apk add --no-cache \
  bash \
  ca-certificates \
  wget

RUN wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.1.0/openapi-generator-cli-5.1.0.jar \
  -O /openapi-generator-cli.jar

RUN printf "#!/bin/bash\njava -jar /openapi-generator-cli.jar" >> /bin/openapi-generator
RUN chmod +x /bin/openapi-generator

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
