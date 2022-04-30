FROM gcc:9.4.0
RUN git clone https://github.com/Quagga/quagga.git &&\
    cd quagga &&\
    apt-get update &&\
    apt-get install -y make autoconf libtool libc-ares-dev gawk texinfo &&\
    ./bootstrap.sh &&\
    ./configure &&\
    make install
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
COPY zebra.conf /usr/local/etc/zebra.conf
COPY ripd.conf /usr/local/etc/ripd.conf
RUN useradd quagga &&\
    cd /usr/local/etc/ &&\
    touch zebra.conf ripd.conf ospfd.conf bgpd.conf &&\
    chmod 777 zebra.conf ripd.conf ospfd.conf bgpd.conf &&\
    chmod 777 /var/run &&\
    cd /var/run/ &&\
    touch zebra.pid ospfd.pid ripd.pid bgpd.pid &&\
    chmod 777 zebra.pid ospfd.pid ripd.pid bgpd.pid &&\
    cd /
EXPOSE 2601
