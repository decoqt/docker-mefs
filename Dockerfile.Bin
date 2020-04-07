FROM memoio/mefs-run:latest
LABEL maintainer yydfjt <yydfjt@hotmail.com>

# get mefs binary
RUN wget -P /usr/local/bin/ http://212.64.28.207:4000/mefs-user    \
    && chmod 777 /usr/local/bin/mefs-user \
    && wget -P /usr/local/bin/ http://212.64.28.207:4000/check_user_mcl.sh   \
    && chmod 777 /usr/local/bin/check_user_mcl.sh

EXPOSE 4001
EXPOSE 5001
EXPOSE 5080
