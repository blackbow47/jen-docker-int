
FROM node:16.13.1-alpine
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker
RUN apk add -U subversion
RUN apk add sudo