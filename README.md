# mosquitto_build
Scripts for building mosquitto (via Docker with WebSockets)

Currently a pretty crude version. Should be cleaned up.

Gets LibWebsocket 1.6.3 and Mosquitto 1.4.8 and compiles both.

Source is kept outside of container so modifications can be made if needed.

"run" container could probably be stripped down much more. Currently all containers are based on CentOS 7.
