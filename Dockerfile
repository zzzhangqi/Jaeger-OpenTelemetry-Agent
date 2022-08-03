FROM alpine:3.15
ARG VERSION=v1.16.0

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --no-cache wget \
    && wget -P /tmp https://ghproxy.com/https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/$VERSION/opentelemetry-javaagent.jar

VOLUME [ "/tmp" ]