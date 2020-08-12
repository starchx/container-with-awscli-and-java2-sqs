## Test in ECS Task with task role (us-east-1)

- Launch task with image: starchx/amazonlinx2-awscli:root-java2-sqs
- SSH to container instance and find the container
- docker exec -it container_id  bash
- run `aws sts get-caller-identity` to verify task role applied
- make all
- ./run_example.sh SendMessages "queuename testmessage"

Note, if queuename is wrong, you will still get an error message like this:

```
software.amazon.awssdk.services.sqs.model.SqsException: Access to the resource https://sqs.us-east-1.amazonaws.com/ is denied. (Service: Sqs, Status Code: 403, Request ID: ed00f9eb-81a0-57bb-9df3-ae46489e32fa)
```

## Build image with Dockerfile

```
docker build -t starchx/amazonlinx2-awscli:root-java2-sqs .
```