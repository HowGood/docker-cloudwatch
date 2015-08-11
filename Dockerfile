# howgood/cloudwatch:s3
FROM howgood/cloudwatch

RUN mkdir -p /etc/cloudwatch/

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/bin/aws", "logs", "push", "--config-file", "/etc/cloudwatch/awslogs.conf"]
