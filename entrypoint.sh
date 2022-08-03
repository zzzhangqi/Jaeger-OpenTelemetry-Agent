#!/bin/bash

VERSION=${VERSION:-v1.16.0}
if [ -d "/agent" ]; then
  echo "directory \"/agent\" exists"
else
  echo "directory \"/agent\" does not exist"
  mkdir /agent
fi

if [ -f "/agent/opentelemetry-javaagent.jar" ]; then
  echo "File \"/agent/opentelemetry-javaagent.jar\" exists"
  exit 0
else
  echo "Downloading OpenTelemetry Java Agent..."
  wget -P /agent https://ghproxy.com/https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/"$VERSION"/opentelemetry-javaagent.jar
  echo "Downloaded OpenTelemetry Java Agent"
fi

