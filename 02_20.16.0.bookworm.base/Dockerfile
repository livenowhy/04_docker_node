FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm
LABEL description="node vue 镜像 基于 node:20.16.0-bookworm"

RUN /bin/sh -c set -ex; apt-get update; apt-get install -y --no-install-recommends vim ; rm -rf /var/lib/apt/lists/*

RUN mkdir /share && mkdir /share/modules
WORKDIR /share

# pnpm 10.x 需要 Node >= 22.13, 固定 pnpm@9 以兼容 Node 20.16.0
RUN npm install -g pnpm@9.15.9
RUN pnpm config set registry https://registry.npmmirror.com

EXPOSE 9001 
EXPOSE 9002
EXPOSE 9003
EXPOSE 9004
EXPOSE 9005
EXPOSE 9006
EXPOSE 9007
EXPOSE 9008
EXPOSE 9009
EXPOSE 9010
EXPOSE 4000

ADD run-server.sh /share/run-server.sh

CMD ["/share/run-server.sh"]

# crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm.base

# notes: 该镜像是公开镜像-不得存放任何敏感信息
