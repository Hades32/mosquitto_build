#!/bin/sh

docker build -t mosquitto_builder -f Dockerfile.build .

docker run -it -v "$PWD/libwebsockets:/src/libwebsockets" -v "$PWD/org.eclipse.mosquitto:/src/mosquitto" mosquitto_builder /compile.sh
