FROM alpine
RUN apk add --no-cache \
        python3 \
        py3-pip \
        && \
        pip3 install ansible-lint
CMD ansible-lint
