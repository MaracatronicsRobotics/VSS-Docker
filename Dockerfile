FROM ubuntu:18.04

# Taking dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    qt5-default \
    sudo \
    libprotobuf-dev \
    protobuf-compiler \
    && apt-get clean

# Taking GIT_TOKEN arg
ARG GIT_TOKEN

# Moving to workdir
WORKDIR /home
    
# Clonning repo
RUN git clone https://$GIT_TOKEN:x-oauth-basic@github.com/MaracatronicsRobotics/Suassuna-VSS.git
