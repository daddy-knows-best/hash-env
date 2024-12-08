FROM ghcr.io/daddy-knows-best/dev-env:latest
ARG USERNAME=ubuntu
ENV WORKDIR=/dev-env

LABEL "maintainer"="Daddy Knows Best"
LABEL org.opencontainers.image.source=https://github.com/daddy-knows-best/hash-env
LABEL org.opencontainers.image.description="Daddy's hash env"

ENV TZ America/Central

ARG DEBIAN_FRONTEND=noninteractive


RUN set -ex && \
  apt update && \
  apt install -y \
  qemu-utils qemu-system cloud-image-utils && \
  apt autoremove -y && \
  apt clean -y \
  rm -rf /var/lib/apt/lists/*

# vault & consul latest
RUN set -ex && \
  hci -a -p c && \
  hci -a -p p && \
  hci -a -p t && \
  hci -a -p v

# set environmental variables
USER $USERNAME
ENV HOME "/home/${USERNAME}"
ENV LC_ALL "C.UTF-8"
ENV LANG "en_US.UTF-8"

WORKDIR ${WORKDIR}
