FROM ubuntu:rolling
MAINTAINER Michael Altizer <mialtize@cisco.com>

# Update the image's pre-installed packages
RUN \
apt-get update && \
apt-get dist-upgrade -y && \
# Install the Snort build dependencies
apt-get install -y \
    bison \
    build-essential \
    cmake \
    flex \
    libdumbnet-dev \
    libhwloc-dev \
    libhyperscan-dev \
    libluajit-5.1-dev \
    liblzma-dev \
    libpcap-dev \
    libpcre3-dev \
    libssl-dev \
    pkg-config \
    uuid-dev \
# Install the Snort developer requirements
    cppcheck \
    curl \
    gdb \
    git \
    lcov \
    libcpputest-dev \
    vim \
# Install programs necessary for documentation generation
#     asciidoc dblatex w3m \
&& \
# Clean out the APT cache
apt-get clean
