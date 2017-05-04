NAME=nowk/confd
VERSION=0.11.0-nginx1.9.7

default=$(VERSION)

$(VERSION):
	docker build --no-cache -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)
.PHONY: push

