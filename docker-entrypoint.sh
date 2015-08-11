#!/bin/sh

set -e

# If the environment variable doesn't exist, alert and exit
test -z "$S3_CLOUDWATCH_CONFIG_URL" && \
  echo "Please set the S3_CLOUDWATCH_CONFIG_URL environment variable to the path of your S3 config" && \
  exit 1

# Download the config
aws s3 cp s3://${S3_CLOUDWATCH_CONFIG_URL} /etc/cloudwatch/awslogs.conf

exec "$@"
