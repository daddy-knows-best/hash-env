FROM ghcr.io/daddy-knows-best/dev-env:latest
ARG USERNAME=ubuntu
ARG USER_UID=1000
ARG USER_GID=1000
ENV WORKDIR=/dev-env

LABEL "maintainer"="Daddy Knows Best"
LABEL org.opencontainers.image.source=https://github.com/daddy-knows-best/hash-env
LABEL org.opencontainers.image.description="Daddy's hash env"

ENV TZ America/Central

ARG DEBIAN_FRONTEND=noninteractive

# set environmental variables
USER $USERNAME
ENV HOME "/home/${USERNAME}"
ENV LC_ALL "C.UTF-8"
ENV LANG "en_US.UTF-8"

#RUN rm -rf /var/lib/apt/lists/*
#RUN apt clean

# vault & consul latest
RUN set -ex && \
  hci -a -p c && \
  hci -a -p p && \
  hci -a -p t && \
  hci -a -p v

WORKDIR ${WORKDIR}
