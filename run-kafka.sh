#!/bin/sh

sed -i s/PORT/$PORT/ config/server.properties
sed -i s/HOST_IP/$HOST_IP/ config/server.properties
sed -i s/BROKER_ID/$BROKER_ID/ config/server.properties
./bin/zookeeper-shell.sh zookeeper:2181 rmr /brokers/ids/$BROKER_ID
./bin/kafka-server-start.sh config/server.properties
