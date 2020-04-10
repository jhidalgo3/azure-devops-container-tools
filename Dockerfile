FROM ubuntu:18.04

LABEL maintainer="Jose Maria Hidalgo Garcia <jhidalgo3@gmail.com>"

WORKDIR /bin

RUN apt-get update && apt-get install -y \
unzip \
wget && \
rm -rf /var/lib/apt/lists/* && \
apt-get purge   --auto-remove && \
apt-get clean

RUN wget -qO- https://github.com/hairyhenderson/gomplate/releases/download/v3.6.0/gomplate_linux-amd64 > gomplate
RUN chmod +x gomplate
RUN wget -qO- https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl > kubectl
RUN chmod +x kubectl
