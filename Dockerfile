FROM ubuntu:rolling
MAINTAINER Michael Altizer <mialtize@cisco.com>

# Update the image's pre-installed packages
RUN apt-get update
RUN apt-get dist-upgrade -y
# Install the Snort build dependencies
RUN apt-get install -y bison build-essential cmake flex libdumbnet-dev libhwloc-dev libhyperscan-dev libluajit-5.1-dev liblzma-dev libpcap-dev libpcre3-dev libssl-dev pkg-config uuid-dev
# Install the Snort developer requirements
RUN apt-get install -y cppcheck curl git lcov libcpputest-dev vim
# Install programs necessary for documentation generation
# RUN apt-get install asciidoc dblatex w3m
# Clean out the APT cache
RUN apt-get clean
