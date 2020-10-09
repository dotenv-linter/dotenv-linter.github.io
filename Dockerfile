FROM node:alpine

RUN apk add --no-cache tini
RUN npm i docsify-cli -g

WORKDIR /site

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["docsify"]
