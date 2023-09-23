build:
	docker build . -t clcain/handbrake-cli

push: build
	docker push clcain/handbrake-cli

run:
	docker run --rm -ti --privileged --gpus=all clcain/handbrake-cli

.PHONY: *
