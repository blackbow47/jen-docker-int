
FROM node:16.13.1-alpine
USER root

RUN apk add -U subversion
RUN apk add sudo