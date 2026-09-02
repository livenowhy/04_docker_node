FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:24.20.trixie.slim.base
LABEL description="node vue 镜像 基于 node:24.20.trixie.slim.base"


RUN npm install -g @vue/cli
ADD package.json /share/modules/package.json
# pnpm 11 默认阻止依赖构建脚本, 通过 pnpm-workspace.yaml 白名单放行
ADD pnpm-workspace.yaml /share/modules/pnpm-workspace.yaml
RUN cd /share/modules && pnpm install


# crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm.vue

# notes: 该镜像是公开镜像-不得存放任何敏感信息
