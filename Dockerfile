FROM ubuntu:18.04

MAINTAINER yydfjt <yydfjt@hotmail.com>

# Add Tini

ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

# install dependence

RUN apt-get update  \
    && apt-get install -y -f apt-utils wget git gcc cmake libgmp-dev libssl-dev build-essential flex bison   \
    && rm -rf /var/lib/apt/lists/*    \
    # install mcl 
    && git clone https://github.com/herumi/mcl.git  \ 
    && cd mcl  \
    && mkdir build  \
    && cd build  \
    && cmake ..  \
    && make  \
    && make install  \
    && ldconfig  \

    ## get mefs binary
    && wget -P /usr/local/bin/ http://212.64.28.207:4000/mefs    \
    && chmod 777 /usr/local/bin/mefs

EXPOSE 4001
EXPOSE 5001
