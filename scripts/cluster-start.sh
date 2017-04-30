# Zookeeper
./../bin/zookeeper-server-start ./../etc/kafka/zookeeper.properties &

# Kafka
./kafka-cluster-start.sh

# Connect
./../bin/connect-distributed ./../etc/kafka/connect-distributed.properties &

# Control Center
./../bin/control-center-start ./../etc/confluent-control-center/control-center.properties &

# Schema Registry
./../bin/schema-registry-start ./../etc/schema-registry/schema-registry.properties &

# REST Poxy

