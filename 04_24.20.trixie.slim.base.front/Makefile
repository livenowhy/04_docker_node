all: push

TAG = 24.20.trixie.slim.base.frontend
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