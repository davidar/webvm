FROM --platform=i386 davidar/bootsh:latest

# COPY bootsh/tarballs/musl-1.2.5.tar.gz /src/tarballs/musl-1.2.5.tar.gz

COPY bootsh/scripts/kilo.c /bin/kilo
COPY bootsh/scripts/kl.c /bin/kl
COPY bootsh/scripts/klisp.kl /bin/klisp
COPY bootsh/scripts/klong.c /bin/klong
COPY bootsh/scripts/lua.c /bin/lua
COPY bootsh/scripts/mlite.c /bin/mll
COPY bootsh/scripts/mlite.m /bin/mlite
COPY bootsh/scripts/tinyprolog.kl /bin/tinyprolog
COPY bootsh/scripts/zf.c /bin/zf
COPY bootsh/scripts/zforth.zf /bin/zforth

COPY bootsh/examples/ /root/
WORKDIR /root/

# COPY bootsh/configure bootsh/Makefile bootsh/
# COPY bootsh/scripts bootsh/scripts
# COPY bootsh/src bootsh/src
# COPY bootsh/lib bootsh/lib

# run init script and cleanup intermediate files
RUN rm -rf /tmp/*

ENTRYPOINT []
CMD [ "/bin/init" ]
