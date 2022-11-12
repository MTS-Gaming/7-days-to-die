FROM ghcr.io/mts-gaming/docker-steamcmd-base

LABEL org.opencontainers.image.authors="info@mts-gaming.net"
LABEL description="7Days2Die Dedicated Server"
LABEL version="v1.0.0" 

RUN ["/steamcmd/steamcmd.sh", \
    "+force_install_dir", "/7days", \
    "+login", "anonymous", \
    "+app_update", "294420", "validate", \
    "+quit"]

WORKDIR /7days

COPY serverconfig.xml /7days/serverconfig.xml

CMD ./startserver.sh -configfile=/7days/serverconfig.xml

EXPOSE 26900/tcp
EXPOSE 26900/udp
EXPOSE 26901/udp
EXPOSE 26902/udp
EXPOSE 26903/udp

EXPOSE 8080/tcp
EXPOSE 8081/tcp

VOLUME [ "/7days/server" ]
