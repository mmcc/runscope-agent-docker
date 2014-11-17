FROM debian:wheezy

RUN apt-get update && apt-get install wget unzip -y

RUN wget http://s3.amazonaws.com/runscope-downloads/runscope-radar/latest/linux-amd64/runscope-radar.zip && \
    unzip runscope-radar.zip -d /usr/local/bin/ && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* runscop-radar.zip

WORKDIR /
