FROM nginx:1.9.7
MAINTAINER Yung Hwa Kwon <yung.kwon@damncarousel.com>

ENV CONFD_VERSION 0.10.0

# install dependencies
# netcat (nc) for docker.sock calls
RUN apt-get update \
	&& apt-get install -y \
		wget \
		netcat

RUN wget -O /usr/bin/confd \
	https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 \
	&& chmod 755 /usr/bin/confd

# copy in confd files
# COPY ./etc/confd /etc/confd

ENTRYPOINT [ "/usr/bin/confd" ]
# CMD [ "-interval", "60", "-node", "$ETCD_ENDPOINT" ]
