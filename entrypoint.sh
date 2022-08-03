#!/bin/bash

VERSION=${VERSION:-v1.16.0}

if [ -f "/agent/opentelemetry-javaagent.jar" ]; then
  echo "File \"/agent/opentelemetry-javaagent.jar\" exists"
else
  echo "Downloading OpenTelemetry Java Agent..."
  wget -P /agent https://ghproxy.com/https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/"$VERSION"/opentelemetry-javaagent.jar
  echo "Downloaded OpenTelemetry Java Agent"
fi

