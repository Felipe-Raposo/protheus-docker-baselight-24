FROM docker.io/oraclelinux:9-slim
LABEL maintainer="Felipe Raposo <feliperaposo@gmail.com>"
RUN microdnf -y update && \
    microdnf -y install tar xz dmidecode && \
    microdnf clean all && \
    rm -rf /var/cache/yum
COPY ./root/ /
CMD ["/protheus.sh"]
