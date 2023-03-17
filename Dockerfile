FROM ubuntu:22.04

#Install required packages
RUN apt update && apt install -y avr-libc avrdude binutils-avr gcc-avr make git

#Set default branch name in git to "main"
RUN git config --global init.defaultBranch main

WORKDIR /arduinoDev
COPY . /arduinoDev