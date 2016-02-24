#!/bin/sh

# TODO split up in two files

echo ------======= LIB WEBSOCKETS =========---------- && \
cd /src/libwebsockets && \
rm -rf build && \
mkdir -p build && \
cd build && \
cmake .. -DLIB_SUFFIX=64 && \
make install && \
echo ------======= MOSQUITTO =========---------- && \
cd /src/mosquitto && \
make clean && \
make binary
