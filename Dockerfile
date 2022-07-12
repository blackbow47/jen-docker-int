
#FROM node:16.13.1-alpine
FROM ubuntu:14.04
# RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER root
#RUN apk add -U subversion
# RUN apt-get install sudo \
#     && sudo apt-get install wget \
#     && wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip \
#     && unzip -o terraform_0.12.21_linux_amd64.zip && rm terraform_0.12.21_linux_amd64.zip \
#     && sudo mv terraform /usr/bin/terraform
RUN apt-get dist-upgrade
RUN apt-get -y upgrade
RUN apt-get update
# RUN apt-get install -y apt-transport-https
# RUN apt-get install sudo 
RUN apt-get install wget 
RUN wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip 
RUN apt-get install unzip
RUN unzip -o terraform_0.12.21_linux_amd64.zip && rm terraform_0.12.21_linux_amd64.zip 
RUN mv terraform /usr/bin/terraform
