#FROM logimethods/docker-sbt-docker
FROM logimethods/docker-sbt-docker

# Install AWS CLI
RUN apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy python-pip
RUN pip install awscli
