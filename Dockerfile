FROM limcos/environment_construction:latest

MAINTAINER suzakinishi <ccyansnow@gmail.com>

# download mefs

RUN wget -P /usr/local/bin/ http://97.64.124.20:8000/mefs    \
 && chmod 777 /usr/local/bin/mefs

EXPOSE 4001
EXPOSE 5001
