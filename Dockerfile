FROM ubuntu:22.04

RUN --mount=type=cache,target=/tmp/shared-cache \
    echo "check for cross tenant marker" && \
    cat /tmp/shared-cache/market.txt 2>&1 || echo "no marker found" && \
    ls -la /tmp/shared-cache/ 2>&1

RUN echo "build done"
