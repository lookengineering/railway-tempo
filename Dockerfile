ARG VERSION=latest
ARG PORT=3100

FROM grafana/tempo:${VERSION}

EXPOSE ${PORT}

COPY tempo.yml /etc/tempo.yml

CMD ["-config.file=/etc/tempo.yml"]
