FROM node:18-bookworm
COPY . /opt/app
RUN mkdir -p /opt/app/out \
&& apt-get update \
&& apt-get dist-upgrade -y \
&& apt-get install -y chromium tzdata \
&& cd /opt/app \
&& npm ci \
&& apt-get clean\
&& rm -rf /var/lib/apt/lists/* 
WORKDIR /opt/app
ENTRYPOINT [ "/usr/local/bin/node", "index.js"]