#!/bin/sh
: "${CONTEXT_ROOT_ARG:=someContextRoot}"
: "${BASE_URL:=http://localhost:8080/systemone/}"
: "${LOGIN_URL:=http://localhost:8080/login/}"
: "${IDP_LOGIN_URL:=http://localhost:8080/idplogin/}"
: "${GATEKEEPER_SERVER_URL:=http://localhost:8080/gatekeeperserver/}"

sed -i "s|{CONTEXT_ROOT}|${CONTEXT_ROOT_ARG}|g" ./plugins.properties

java \
  -classpath /fitnesse/fitnesse.jar \
  -DsystemUnderTestUrl="$BASE_URL" \
  -DappTokenVerifierUrl="$LOGIN_URL" \
  -DidpLoginUrl="$IDP_LOGIN_URL" \
  -DgatekeeperServerUrl="$GATEKEEPER_SERVER_URL" \
  fitnesseMain.FitNesseMain \
  -p 8090 \
  -a /fitnesse/password.txt