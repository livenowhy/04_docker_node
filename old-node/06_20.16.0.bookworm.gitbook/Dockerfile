FROM crpi-8kvyt6flnal17nk5.cn-beijing.personal.cr.aliyuncs.com/liveno/node:20.16.0.bookworm.base
LABEL description="gitbook镜像"

RUN npm config set registry=https://registry.npmmirror.com
RUN npm install --global gitbook-cli
ADD polyfills.js /usr/local/lib/node_modules/gitbook-cli/node_modules/npm/node_modules/graceful-fs/polyfills.js
ADD book.json   /share/notes/book.json

RUN gitbook install

# notes: 该镜像是公开镜像-不得存放任何敏感信息
