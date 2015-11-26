FROM scratch
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

# binary is from make get-confd
COPY ./confd /
# RUN chmod 755 /confd

# copy in confd files
# COPY ./etc/confd /etc/confd

ENTRYPOINT [ "/confd" ]
# CMD [ "-interval", "60", "-node", "$ETCDCTL_ENDPOINT" ]
