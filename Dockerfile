FROM debian

RUN apt-get update && apt-get install -y git-core

WORKDIR /

RUN git clone https://gitlab.com/kalilinux/build-scripts/kali-arm

WORKDIR /kali-arm/

RUN ./common.d/build_deps.sh

RUN TERM=xterm-256color ./radxa-zero-sdcard.sh

RUN ls
