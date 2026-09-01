FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm
LABEL description="node vue 镜像 基于 node:20.16.0-bookworm"

RUN /bin/sh -c set -ex; apt-get update; apt-get install -y --no-install-recommends vim ; rm -rf /var/lib/apt/lists/*

RUN mkdir /share && mkdir /share/modules
WORKDIR /share

RUN npm install -g pnpm
RUN pnpm config set registry https://registry.npmmirror.com

EXPOSE 9001 9002 9003 9004 9005 9006 9007 9008 9009 9010 4000 35729

ADD run-server.sh /share/run-server.sh

CMD ["/share/run-server.sh"]

# crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm.base

# notes: 该镜像是公开镜像-不得存放任何敏感信息
