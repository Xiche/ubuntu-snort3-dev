FROM ubuntu:20.10
MAINTAINER Michael Altizer <mialtize@cisco.com>

# Workaround for headless installation hang during Docker build
ARG DEBIAN_FRONTEND=noninteractive

# Update the image's pre-installed packages
RUN \
apt-get update && \
apt-get dist-upgrade -y && \
# Install the Snort build dependencies
apt-get install -y \
    build-essential \
    cmake \
    libdumbnet-dev \
    libhwloc-dev \
    libhyperscan-dev \
    libluajit-5.1-dev \
    liblzma-dev \
    libmnl-dev \
    libpcap-dev \
    libpcre3-dev \
    libssl-dev \
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
apt-get clean
