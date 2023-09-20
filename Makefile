build:
	docker build . -t clcain/handbrake-cli-cuda

push: build
	docker push clcain/handbrake-cli-cuda

run: build
	docker run -ti --privileged --gpus=all clcain/handbrake-cli-cuda

.PHONY: *
