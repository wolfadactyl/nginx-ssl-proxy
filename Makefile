IMAGE ?= us.gcr.io/qwil-build/ssl-proxy:3.2.0
.PHONY: build
build:
	docker build -t $(IMAGE) .

.PHONY: push
push:
	gcloud docker -- push $(IMAGE)

