# confluent
confluent test

zookeeper
./bin/zookeeper-server-start ./etc/kafka/zookeeper.properties

kafka
./bin/kafka-server-start ./etc/kafka/server.properties

connect
./bin/connect-distributed ./etc/kafka/connect-distributed.properties

control-center
./bin/control-center-start ./etc/confluent-control-center/control-center.properties
