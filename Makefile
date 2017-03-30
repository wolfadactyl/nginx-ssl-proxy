IMAGE ?= us.gcr.io/qwil-build/ssl-proxy:3.3.0
.PHONY: build
build:
	docker build -t $(IMAGE) .

.PHONY: push
push:
	gcloud docker -- push $(IMAGE)

