FROM memoio/mefs-env:latest
LABEL maintainer yydfjt <yydfjt@hotmail.com>

# get mefs binary
RUN wget -P /usr/local/bin/ http://212.64.28.207:4000/mefs-keeper    \
    && chmod 777 /usr/local/bin/mefs-keeper \
    && wget -P /usr/local/bin/ http://212.64.28.207:4000/check_keeper.sh   \
    && chmod 777 /usr/local/bin/check_keeper.sh

EXPOSE 4001
