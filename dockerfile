# To build use:
# docker build -t schnabel/ftrobopro-env:v1 .

FROM ubuntu:17.04
MAINTAINER Ingo Schnabel

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    bash \
    bc \
    binutils \
    build-essential \
    bzip2 \
    cpio \
    g++ \
    gcc \
    git \
    gzip \
    locales \
    libncurses5-dev \
    gcc-multilib \	
    make \
    mercurial \
    whois \
    patch \
    perl \
    python \
    rsync \
    sed \
    tar \
    unzip \
    nano \
    libeina-dev \
    wget

# Sometimes Buildroot need proper locale, e.g. when using a toolchain
# based on glibc.
RUN locale-gen en_US.utf8

RUN git clone https://github.com/insc/txt-firmware.git /root/buildroot

WORKDIR /root/buildroot

ENV O=/buildroot_output

VOLUME /buildroot_output

RUN ["/bin/bash"]
