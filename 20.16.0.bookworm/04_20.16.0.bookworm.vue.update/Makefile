all: push

TAG = 20.16.0-bookworm-vue-update
PREFIX = crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com
IMAGE_NAME = liveno/node

container:
	docker build -t ${PREFIX}/${IMAGE_NAME}:${TAG} .

push: container
	docker push ${PREFIX}/${IMAGE_NAME}:${TAG}

clean:
	docker rmi -f $(PREFIX):$(TAG) || true

pull:
	docker pull ${PREFIX}/${IMAGE_NAME}:${TAG}


# docker build -t crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0-bookworm-vue-update .