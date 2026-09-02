FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:24.20.trixie.slim.base
LABEL description="node vue 镜像 基于 node:24.20.trixie.slim.base"

RUN npm install -g pnpm
RUN pnpm config set registry https://registry.npmmirror.com

ADD package.json /share/modules/package.json
RUN cd /share/modules && pnpm install

# crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:24.20.trixie.slim.vue

# notes: 该镜像是公开镜像-不得存放任何敏感信息
