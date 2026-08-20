FROM ubuntu:22.04

ARG CACHEBUST=5

RUN --mount=type=cache,target=/tmp/shared-cache \
    cp /tmp/shared-cache/marker.txt /result.txt 2>/dev/null; \
    ls -la /tmp/shared-cache/ > /listing.txt 2>&1; \
    cat /tmp/shared-cache/marker.txt 2>&1 || echo "NO_MARKER_FOUND."

CMD cat /result.txt 2>/dev/null || echo "NO_CROSS_TENANT_DATA"; cat /listing.txt
