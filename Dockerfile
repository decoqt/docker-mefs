FROM memoio/mefs-env:latest
LABEL maintainer yydfjt <yydfjt@hotmail.com>

# get mefs binary
RUN wget -P /usr/local/bin/ http://212.64.28.207:4000/mefs    \
    && chmod 777 /usr/local/bin/mefs \
    && wget -P /usr/local/bin/ http://212.64.28.207:4000/check_mefs.sh   \
    && chmod 777 /usr/local/bin/check_mefs.sh

EXPOSE 3001
EXPOSE 4001
EXPOSE 5001
