#!/bin/sh

sed -i s/PORT/$PORT/ config/server.properties
sed -i s/HOST_IP/$HOST_IP/ config/server.properties
sed -i s/BROKER_ID/$BROKER_ID/ config/server.properties

./bin/kafka-server-start.sh config/server.properties
