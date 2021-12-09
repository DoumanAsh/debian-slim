FROM debian:bullseye-slim

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ca-certificates; \
    rm -rf /var/lib/apt/lists/*;
