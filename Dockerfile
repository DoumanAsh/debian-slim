FROM debian:bullseye-slim

ARG EXTRA_APT_PACKS=''

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends ca-certificates $EXTRA_APT_PACKS ; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*;
