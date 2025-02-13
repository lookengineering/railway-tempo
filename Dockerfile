ARG VERSION=latest
ARG PORT=3100

FROM grafana/tempo:${VERSION}

EXPOSE ${PORT}

COPY ./tempo.yaml /etc/tempo.yaml

CMD ["-config.file=/etc/tempo.yml"]
