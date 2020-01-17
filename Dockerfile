FROM alpine
RUN apk add --no-cache \
        python3 \
        py3-pip \
        git \
        gcc \
        python3-dev \
        musl-dev \
        libffi-dev \
        openssl-dev \
        && \
        pip3 install ansible-lint \
        && \
        apk del \
        gcc \
        python3-dev \
        musl-dev \
        libffi-dev \
        openssl-dev
        
CMD ansible-lint
