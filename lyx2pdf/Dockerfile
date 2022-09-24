FROM ubuntu:latest
WORKDIR /data
VOLUME /data

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install software-properties-common texlive-full git-all -y

RUN add-apt-repository ppa:lyx-devel/release
RUN apt-get update || true
RUN apt-get install lyx -y

RUN rm -rf /var/lib/apt/lists/*