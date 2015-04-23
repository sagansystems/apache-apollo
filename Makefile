.PHONY: build run

IMAGE=sagan/edge-broker

build:
	docker build -t $(IMAGE) .
	docker tag -f $(IMAGE):latest $(IMAGE):1.7.1

run:
	docker run -it $(IMAGE):1.7.1

push:
	docker push $(IMAGE):1.7.1
	docker push $(IMAGE):latest