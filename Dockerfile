FROM ubuntu:18.04
LABEL maintainer yydfjt <yydfjt@hotmail.com>

# install dependence
RUN apt-get update  \
    && apt-get install -y -f apt-utils wget git gcc cmake libgmp-dev libssl-dev build-essential flex bison libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev libzstd-dev  \
    # install mcl rocksdb
    && git clone https://github.com/yydfjt/docker-mefs-env.git  \ 
    && cd docker-mefs-env   \
    && make \
    ## get mefs binary
    && wget -P /usr/local/bin/ http://212.64.28.207:4000/mefs    \
    && chmod 777 /usr/local/bin/mefs \
    && wget -P /usr/local/bin/ http://212.64.28.207:4000/check_mefs.sh   \
    && chmod 777 /usr/local/bin/check_mefs.sh

EXPOSE 4001
EXPOSE 5001
