ARG CORA_DOCKER_VERSION
FROM cora-docker-java:${CORA_DOCKER_VERSION}

ARG CONTEXT_ROOT_ARG=someContextRoot

WORKDIR /fitnesse

# Copy application files into /fitnesse
COPY fitnesse.jar        .
COPY plugins.properties  .
COPY password.txt        .
COPY FitNesseRoot        ./FitNesseRoot
COPY entrypoint.sh       .

# Replace placeholder with the build arg
RUN sed -i "s|$CONTEXT_ROOT|${CONTEXT_ROOT_ARG}|g" ./plugins.properties

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]





