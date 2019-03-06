#!/usr/bin/env bash

echo
echo "Installing utilities for unix development"

# For users of unixes
brew install pstree
brew install the_silver_searcher
brew install wget
brew install httping

# For developers of shell scripts
brew install jq

# Redis
brew install redis
brew services start redis

# RabbitMQ
brew install rabbitmq
brew services start rabbitmq

# Memcached
brew install memcached
brew services start memcached
