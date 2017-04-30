./../bin/kafka-topics --zookeeper localhost:2181 --create --topic $1 \
   --partitions $2 --replication-factor $3
