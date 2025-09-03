ARG CORA_DOCKER_VERSION=toBeSet
FROM cora-docker-java:${CORA_DOCKER_VERSION}

WORKDIR /fitnesse

# Copy application files into /fitnesse
COPY fitnesse.jar        .
COPY plugins.properties  .
COPY password.txt        .
COPY FitNesseRoot        ./FitNesseRoot
COPY entrypoint.sh       .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
