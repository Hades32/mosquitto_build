#!/bin/sh

docker build -t mosquitto_server -f Dockerfile.run .

docker run -d -v "$PWD/cfg:/cfg" mosquitto_server
