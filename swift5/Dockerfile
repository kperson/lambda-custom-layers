FROM swift:5.0.1-xenial

RUN apt-get install -y libssl-dev libidn2-0 libnghttp2-14 libpsl-dev libunistring-dev  libidn11
RUN mv /usr/lib/x86_64-linux-gnu/libssl.so /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0
RUN mv /usr/lib/x86_64-linux-gnu/libcrypto.so /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0
