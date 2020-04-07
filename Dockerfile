FROM memoio/mefs-run:latest
LABEL maintainer yydfjt <yydfjt@hotmail.com>

# get mefs binary
RUN wget -P /usr/local/bin/ http://212.64.28.207:4000/mefs-provider    \
    && chmod 777 /usr/local/bin/mefs-provider \
    && wget -P /usr/local/bin/ http://212.64.28.207:4000/check_provider_mcl.sh   \
    && chmod 777 /usr/local/bin/check_provider_mcl.sh

RUN mkdir -p /app \
    && wget -P /app http://212.64.28.207:4000/providerStart.sh   \
    && chmod 777 /app/providerStart.sh

ENV WALLET='' PASSWORD='' NETKEY='testnet'
ENTRYPOINT ["sh","-c","/app/providerStart.sh"]
CMD ["/bin/bash"]

EXPOSE 4001
