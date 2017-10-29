#FROM logimethods/docker-sbt-docker
FROM gambtho/sbt-docker-alpine
ENV AWSCLI_VERSION "1.11.177"
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==${AWSCLI_VERSION} && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws
WORKDIR /root
