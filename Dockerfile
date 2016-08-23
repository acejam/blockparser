FROM ubuntu:14.04
MAINTAINER Joshua Noble <acejam@gmail.com>
WORKDIR /root

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y libssl-dev build-essential g++ libboost-all-dev libsparsehash-dev git-core perl

RUN git clone https://github.com/znort987/blockparser.git && \
    cd /root/blockparser && \
    ./make

ENTRYPOINT ["/root/blockparser/parser"]
CMD ["help"]
