#!/bin/sh

git clone https://github.com/warmcat/libwebsockets.git
cd libwebsockets
git checkout v1.6.3
cd ..

git clone https://git.eclipse.org/r/mosquitto/org.eclipse.mosquitto
cd org.eclipse.mosquitto
git checkout v1.4.8
sed -i 's/WITH_WEBSOCKETS:=.*/WITH_WEBSOCKETS:=yes/g' config.mk
cd ..
