NAME=nowk/confd
VERSION=0.10.0-nginx1.9.7

default=$(VERSION)

$(VERSION):
	docker build -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)
.PHONY: push

