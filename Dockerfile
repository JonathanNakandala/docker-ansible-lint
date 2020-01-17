FROM alpine
RUN apk add --no-cache \
        python3 \
        py3-pip \
        gcc \
        python3-dev \
        musl-dev \
        libffi-dev \
        && \
        pip3 install ansible-lint
CMD ansible-lint
