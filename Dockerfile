FROM alpine:3.12.1
WORKDIR /tmp
RUN apk add --no-cache wget openjdk11
RUN wget https://downloads.jboss.org/keycloak/6.0.1/keycloak-6.0.1.tar.gz && \
    tar -xvzf keycloak-6.0.1.tar.gz && rm keycloak-6.0.1.tar.gz && mv keycloak-6.0.1 /keycloak && \
    chmod o+x /keycloak/bin
WORKDIR /keycloak
ENV PATH="/keycloak/bin:${PATH}"
CMD /bin/sh