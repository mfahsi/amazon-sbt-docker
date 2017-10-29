#FROM logimethods/docker-sbt-docker
#FROM gambtho/sbt-docker-alpine
FROM  e8kor/sbt-docker

# Install AWS CLI
RUN apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy python-pip
RUN pip install awscli
