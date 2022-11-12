FROM ghcr.io/mts-gaming/docker-steamcmd-base

LABEL org.opencontainers.image.authors="info@mts-gaming.net" \
      description="7Days2Die Dedicated Server" \
      version="v1.0.0" 

RUN ["/steamcmd/steamcmd.sh", \
    "+force_install_dir", "/7days", \
    "+login", "anonymous", \
    "+app_update", "294420", "validate", \
    "+quit"]

WORKDIR /7days

COPY serverconfig.xml /7days/serverconfig.xml

CMD ./startserver.sh -configfile=/7days/serverconfig.xml

EXPOSE 26900/tcp \
       26900/udp \
       26901/udp \
       26902/udp \
       26903/udp \
       8080/tcp \
       8081/tcp

VOLUME [ "/7days/server" ]
