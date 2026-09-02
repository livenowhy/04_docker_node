FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm.base
LABEL description="node vue 镜像 基于 node:20.16.0.bookworm.base"

RUN npm install -g @vue/cli
ADD package.json /share/modules/package.json
RUN cd /share/modules && pnpm install

# crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm.vue

# notes: 该镜像是公开镜像-不得存放任何敏感信息
