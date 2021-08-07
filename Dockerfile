FROM ubuntu:rolling
LABEL maintainer="Michael Altizer <mialtize@cisco.com>"

# Workaround for headless installation hang during Docker build
ARG DEBIAN_FRONTEND=noninteractive

# Update the image's pre-installed packages
RUN \
apt-get update && \
apt-get dist-upgrade -y && \
# Install the Snort build dependencies
apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    cmake \
    flex \
    libdumbnet-dev \
    libhwloc-dev \
    libflatbuffers-dev \
    libgoogle-perftools-dev \
    libhyperscan-dev \
    libluajit-5.1-dev \
    liblzma-dev \
    libmnl-dev \
    libpcap-dev \
    libpcre3-dev \
    libssl-dev \
    libtool \
    libunwind-dev \
    pkg-config \
    uuid-dev \
    zlib1g-dev \
# Install the Snort developer requirements
    curl \
    gdb \
    git \
    libcpputest-dev \
    vim \
# Install programs necessary for documentation generation
#     asciidoc dblatex w3m \
&& \
# Clean out the APT cache
apt-get clean \
&& rm -rf /var/lib/apt/lists/*
