#!/bin/bash

topic="chicago_crimes"
partition_count=8

. ./kafka_env.sh
$kafka_dir/bin/kafka-topics.sh --create --topic $topic --replication-factor 1 \
  --partitions $partition_count --zookeeper $zk_host:2181

