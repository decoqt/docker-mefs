FROM limcos/environment_construction:latest

MAINTAINER suzakinishi <ccyansnow@gmail.com>

# download mefs

RUN wget -P /usr/local/bin/ http://212.64.28.207:4000/mefs    \
 && chmod 777 /usr/local/bin/mefs

EXPOSE 4001
EXPOSE 5001
