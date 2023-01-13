FROM alpine:3.14

RUN apk add --no-cache nodejs npm chromium chromium-chromedriver

RUN npm i -g lighthouse

RUN adduser -S lighthouse

ADD config /config
ADD bin /lighthouse-bin
ADD tmp /tmp

USER lighthouse

ENV CHROMIUM_FLAGS="--disable-software-rasterizer --disable-dev-shm-usage --headless --np-sandbox"

# ENTRYPOINT ["/lighthouse-bin/batch-run.sh"]