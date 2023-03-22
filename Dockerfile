FROM ghcr.io/wundergraph/cloud-build-runner:node-18
WORKDIR /app
ENV CI=true WG_CLOUD=true WG_COPY_BIN_PATH=/opt/wundergraph/bin/wunderctl
COPY projects/b/package.json projects/b/package-lock.json /app/
RUN npm ci --cache /root/cache/npm --prefer-offline --no-audit && cp /opt/wundergraph/bin/wunderctl /usr/bin/wunderctl
COPY projects/b/.wundergraph ./.wundergraph
RUN wunderctl generate --pretty-logging=true --wundergraph-dir=.wundergraph
CMD wunderctl start --pretty-logging=false --shutdown-after-idle=60 --wundergraph-dir=.wundergraph