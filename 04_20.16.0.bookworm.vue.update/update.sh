# 1. 在有网络的机器上准备升级包
# 先在有网络的机器上，下载 vite 5.4.12 及其所有依赖的离线包：


# 在有网络的机器上，创建一个临时目录
mkdir /share/modules
cd /share/modules

# 复制当前的 package.json，修改 vite 版本
# 或者直接创建 package.json 只包含 vite
cat > package.json << 'EOF'
{
  "name": "temp",
  "private": true,
  "devDependencies": {
    "vite": "5.4.12"
  }
}
EOF


# /share/modules/node_modules/.pnpm
# 安装并缓存所有依赖
pnpm install

# 查看 vite 实际安装的版本和路径
ls node_modules/.pnpm/vite@5.4.12*/node_modules/vite/



# 2. 打包 vite 及其依赖
# 方法A：打包整个 node_modules（最简单）
cd /share/modules
tar -czf vite-5.4.12-offline.tar.gz node_modules/ pnpm-lock.yaml

# 方法B：只打包 vite 包本身（更精确）
cd /share/modules
tar -czf vite-5.4.12-offline.tar.gz \
  node_modules/.pnpm/vite@5.4.12* \
  node_modules/vite


# 3. 传输到离线服务器

scp vite-5.4.12-offline.tar.gz user@offline-server:/tmp/


# 4. 在离线服务器上替换 vite
# SSH 到离线服务器
# 找到容器或项目中的 node_modules 路径
# 假设在 /share/modules

cd /share/modules

# 备份现有 vite
mv node_modules/vite node_modules/vite.5.3.3.bak

# 解压新版本
tar -xzf /tmp/vite-5.4.12-offline.tar.gz -C /share/modules/

# 如果 tar 包里是完整路径，直接解压即可
# 验证版本
node -e "console.log(require('./node_modules/vite/package.json').version)"
# 应输出: 5.4.12

# 5. 如果是容器环境

# 进入运行中的容器
docker exec -it <container_id> bash

# 在容器内替换
cd /share/modules
rm -rf node_modules/vite node_modules/.pnpm/vite@5.3.3*
# 将打包好的文件拷贝进容器
# docker cp vite-5.4.12-offline.tar.gz <container_id>:/tmp/
tar -xzf /tmp/vite-5.4.12-offline.tar.gz -C /share/modules/

# 验证
npx vite --version
# 6. 更稳妥的方式：更新 pnpm-lock.yaml

# 在有网机器上生成 lock 文件
cd /share/modules
pnpm install --lockfile-only

# 把 package.json 和 pnpm-lock.yaml 传到离线服务器
# 如果 pnpm 有离线缓存，执行安装即可
cd /share/modules
pnpm install --offline --frozen-lockfile

# 总结：最直接的方式是在有网机器上 pnpm install 获取 vite 5.4.12，然后把 node_modules/vite 整个目录打包传到离线服务器替换即可。
# vite 本身是纯 JS 包，不涉及原生编译，替换后即可生效。