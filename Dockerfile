FROM ubuntu:focal-20230605

RUN apt-get update
RUN apt-get install -y gnat make gprbuild wget \
    unzip git curl libaunit19-dev


RUN wget 'https://github.com/alire-project/alire/releases/download/v1.2.2/alr-1.2.2-bin-x86_64-linux.zip' \
    -O /usr/local/alire.zip && \
    unzip /usr/local/alire.zip -d /usr/local && \
    rm /usr/local/alire.zip

RUN mkdir -p /usr/local/app
RUN ./usr/local/bin/alr toolchain --select gprbuild
RUN echo 'PATH=$PATH:/usr/local/bin' >> /etc/environment
WORKDIR /usr/local/app
COPY ./ ./ 