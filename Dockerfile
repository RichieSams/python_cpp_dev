FROM alpine:3.7

RUN apk add --no-cache \
        g++ \
        gcc \
        make \
        python3 \
        python3-dev \
        swig && \
    pip3 --disable-pip-version-check install setuptools

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["make"]
