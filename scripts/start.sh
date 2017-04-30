
# Zookeeper
./../bin/zookeeper-server-start ./../etc/kafka/zookeeper.properties &

# Kafka
./../bin/kafka-server-start ./../etc/kafka/server.properties &

# Connect
./../bin/connect-distributed ./../etc/kafka/connect-distributed.properties &

# Control Center
./../bin/control-center-start ./../etc/confluent-control-center/control-center.properties &

# Schema Registry
./../bin/schema-registry-start ./../etc/schema-registry/schema-registry.properties &

# REST Poxy


