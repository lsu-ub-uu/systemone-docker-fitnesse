ARG CORA_DOCKER_VERSION
FROM cora-docker-java:${CORA_DOCKER_VERSION}

COPY /fitnesse.jar /fitnesse/
COPY /FitNesseRoot /fitnesse/FitNesseRoot
COPY /plugins.properties /fitnesse/
COPY /password.txt /fitnesse/

WORKDIR /fitnesse

CMD java -classpath /fitnesse/fitnesse.jar  -DsystemUnderTestUrl="http://systemone:8080/systemone/" -DappTokenVerifierUrl="http://login:8080/login/"  -DidpLoginUrl="http://idplogin:8080/idplogin/" -DgatekeeperServerUrl="http://gatekeeper:8080/gatekeeperserver/" fitnesseMain.FitNesseMain -p 8090 -a /fitnesse/password.txt
