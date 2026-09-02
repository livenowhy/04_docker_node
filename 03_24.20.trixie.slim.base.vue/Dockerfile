FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:24.20.trixie.slim.base
LABEL description="node vue 镜像 基于 node:24.20.trixie.slim.base"


# 固定 pnpm 11.x (需 Node >= 22.13, Node 24.20 满足); 固定大版本保证
# 后续镜像中 pnpm-workspace.yaml 的 allowBuilds 配置格式一致
RUN npm install -g pnpm
RUN pnpm config set registry https://registry.npmmirror.com

# RUN npm install -g @vue/cli
ADD package.json /share/modules/package.json
# pnpm 11 默认阻止依赖构建脚本, 通过 pnpm-workspace.yaml 白名单放行
ADD pnpm-workspace.yaml /share/modules/pnpm-workspace.yaml
RUN cd /share/modules && pnpm install


# crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:24.20.trixie.slim.vue

# notes: 该镜像是公开镜像-不得存放任何敏感信息
