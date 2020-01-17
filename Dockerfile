FROM alpine
RUN apk add --no-cache \
        python3 \
        py3-pip \
        gcc \
        && \
        pip3 install ansible-lint
CMD ansible-lint
