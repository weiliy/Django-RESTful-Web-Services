USER						:=$(shell id -u ${USER})
GROUP						:=$(shell id -g ${USER})
APP_NAME				:= $(shell  pwd | sed -E 's/.*\///')
BASE_DOCKERFILE := Dockerfile.base
DOCKER_REG			:= me.shared:5000
BASE_IMAGE			:= $(shell echo $(DOCKER_REG)/$(APP_NAME) | tr A-Z a-z)
PORT						?= 8000

all: base setup dev

base:
	docker build -t $(BASE_IMAGE) - < $(BASE_DOCKERFILE)

setup:
	docker run \
		-w /app \
		-v "${PWD}:/app" \
		-v "/etc/passwd:/etc/passwd:ro" \
		-u $(USER):$(GROUP) \
		-i --rm $(BASE_IMAGE) \
		/bin/bash ./setup.sh init

dev:
	docker run \
		-p $(PORT):8000 \
		-v "${PWD}:/app" \
		-v "/etc/passwd:/etc/passwd:ro" \
		-w /app \
		-u $(USER):$(GROUP) \
		-it --rm $(BASE_IMAGE) \
		/bin/bash ./setup.sh bash
