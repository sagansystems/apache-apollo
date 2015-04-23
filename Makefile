.PHONY: build run

IMAGE=sagan/apache-apollo

build:
	docker build -t $(IMAGE) .
	docker tag -f $(IMAGE):latest $(IMAGE):1.7.1

run:
	docker run -it $(IMAGE):1.7.1