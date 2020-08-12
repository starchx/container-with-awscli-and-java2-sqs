FROM amazonlinux:latest

RUN yum install python3-pip shadow-utils maven make -y && yum clean all

RUN pip3 install --no-cache-dir awscli --upgrade

COPY myapp /myapp

WORKDIR /myapp

#RUN make all

CMD ["sleep", "24h"]
#CMD ["aws", "sts", "get-caller-identity"]

# docker build -t starchx/amazonlinx2-awscli:root-java2-sqs .