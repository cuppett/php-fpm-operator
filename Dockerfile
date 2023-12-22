# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.33.0

LABEL maintainer="Stephen Cuppett <steve@cuppett.com>" \
      org.opencontainers.image.source="https://github.com/cuppett/php-fpm-operator"

ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
WORKDIR ${HOME}
