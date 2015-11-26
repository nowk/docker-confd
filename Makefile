
VERSION=0.10.0

build-docker:
	docker build -t nowk/confd:$(VERSION) .

push:
	docker push nowk/confd:$(VERSION)


.PHONY: get-confd push
