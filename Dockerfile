FROM kong:2.8.3-ubuntu

USER root

RUN apt-get update

RUN apt-get install -y build-essential libssl-dev

RUN luarocks install openssl

RUN luarocks install luaossl OPENSSL_DIR=/usr/local/kong CRYPTO_DIR=/usr/local/kong

COPY kong-plugin-hello/ kong-plugin-hello/

RUN cd kong-plugin-hello/ && luarocks make ;

USER kong
