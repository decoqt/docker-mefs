FROM memoio/mefs-user-bin:latest
LABEL maintainer yydfjt <yydfjt@hotmail.com>

RUN mkdir -p /app \
    && wget -P /app http://212.64.28.207:4000/userStart.sh   \
    && chmod 777 /app/userStart.sh

ENV WALLET='' PASSWORD='' NETKEY='testnet'
ENTRYPOINT ["sh","-c","/app/userStart.sh"]
CMD ["/bin/bash"]

EXPOSE 4001
EXPOSE 5001
EXPOSE 5080
