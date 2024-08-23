FROM ubuntu:24.04

LABEL org.opencontainers.image.title="Docker image for Kraken2"
LABEL org.opencontainers.image.authors="Julien FOURET"
LABEL org.opencontainers.image.description="https://ccb.jhu.edu/software/kraken2/index.shtml"
LABEL org.opencontainers.image.vendor="Nexomis"
LABEL org.opencontainers.image.licenses="MIT"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt install -y --no-install-recommends ca-certificates kraken2=2.1.3-1 rename tar gzip \
  && rm -rf /var/lib/apt/lists/*
