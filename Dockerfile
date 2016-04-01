FROM rancher/confd-base:0.11.0-dev-rancher

ADD ./conf.d /etc/confd/conf.
ADD ./templates /etc/confd/templates

ENTRYPOINT ["/confd"]
CMD ["--backend", "env", "--one-time", "--log-level", "debug"]
