
VERSION=0.10.0

get-confd:
	curl -o ./confd -L https://github.com/kelseyhightower/confd/releases/download/v$(VERSION)/confd-$(VERSION)-linux-amd64

build-docker: get-confd
	docker build -t nowk/confd:$(VERSION) .
	rm ./confd

push:
	docker push nowk/confd:$(VERSION)


.PHONY: get-confd push
