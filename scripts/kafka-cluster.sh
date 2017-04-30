# Copy the config files to /tmp
cp -f ../etc/kafka/server.properties ../etc/kafka/server0.properties

# Add metrics reporter configs (alternatively, we could uncomment the configs)
echo "metric.reporters=io.confluent.metrics.reporter.ConfluentMetricsReporter" >> ../etc/kafka/server0.properties
echo "confluent.metrics.reporter.bootstrap.servers=localhost:9092" >> ../etc/kafka/server0.properties
echo "confluent.metrics.reporter.zookeeper.connect=localhost:2181" >> ../etc/kafka/server0.properties
echo "confluent.metrics.reporter.topic.replicas=1" >> ../etc/kafka/server0.properties
echo "default.replication.factor=2" >> ../etc/kafka/server0.properties

# properties for broker.id=1
cp -f ../etc/kafka/server0.properties ../etc/kafka/server1.properties
sed -i '' -e "s/broker.id=0/broker.id=1/g" ../etc/kafka/server1.properties
sed -i '' -e "s/9092/9082/g" ../etc/kafka/server1.properties
sed -i '' -e "s/#listen/listen/g" ../etc/kafka/server1.properties
sed -i '' -e "s/kafka-logs/kafka-logs-1/g" ../etc/kafka/server1.properties

# properties for broker.id=2
cp -f ../etc/kafka/server0.properties ../etc/kafka/server2.properties
sed -i '' -e "s/broker.id=0/broker.id=2/g" ../etc/kafka//server2.properties
sed -i '' -e "s/9092/9072/g" ../etc/kafka/server2.properties
sed -i '' -e "s/#listen/listen/g" ../etc/kafka/server2.properties
sed -i '' -e "s/kafka-logs/kafka-logs-2/g" ../etc/kafka/server2.properties

# properties for broker.id=3
cp -f ../etc/kafka/server0.properties ../etc/kafka/server3.properties
sed -i '' -e "s/broker.id=0/broker.id=3/g" ../etc/kafka/server3.properties
sed -i '' -e "s/9092/9062/g" ../etc/kafka/server3.properties
sed -i '' -e "s/#listen/listen/g" ../etc/kafka/server3.properties
sed -i '' -e "s/kafka-logs/kafka-logs-3/g" ../etc/kafka/server3.properties

