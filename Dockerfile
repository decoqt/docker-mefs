FROM memoio/mefs-provider-bin:latest
LABEL maintainer yydfjt <yydfjt@hotmail.com>

RUN mkdir -p /app \
    && wget -P /app http://212.64.28.207:4000/providerStart.sh   \
    && chmod 777 /app/providerStart.sh

ENV WALLET='' PASSWORD='' NETKEY='testnet'
ENTRYPOINT ["sh","-c","/app/providerStart.sh"]
CMD ["/bin/bash"]

EXPOSE 4001
