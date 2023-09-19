build:
	docker build . -t clcain/handbrake-cli-cuda

push:
	docker push clcain/handbrake-cli-cuda

run:
	docker run -ti --privileged --gpus=all clcain/handbrake-cli-cuda

.PHONY: *
