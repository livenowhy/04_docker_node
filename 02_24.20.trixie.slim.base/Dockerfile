FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:24.20.trixie.slim
LABEL description="node vue 镜像 基于 node:24.20.trixie.slim"

RUN /bin/sh -c set -ex; apt-get update; apt-get install -y --no-install-recommends vim ; rm -rf /var/lib/apt/lists/*

RUN mkdir /share && mkdir /share/modules
WORKDIR /share

RUN npm install -g pnpm
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

# crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:24.20.trixie.slim.base

# notes: 该镜像是公开镜像-不得存放任何敏感信息
