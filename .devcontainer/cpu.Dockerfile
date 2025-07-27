ARG UBUNTU_VERSION=22.04

FROM ubuntu:$UBUNTU_VERSION AS build

ARG TARGETARCH

ARG GGML_CPU_ARM_ARCH=armv8-a

ENV LLAMA_ARG_HOST=0.0.0.0

RUN apt-get update && \
    apt-get install -y build-essential git cmake curl libcurl4-openssl-dev ccache

ENTRYPOINT [ "/bin/bash" ]

