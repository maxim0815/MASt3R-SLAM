FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-devel

####################################################
# NO ENVIRONMENT RIGHT NOW
####################################################

ARG DEBIAN_FRONTEND=noninteractive

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Update and install debian stuff
RUN apt-get update && apt-get -y install \
    wget \
    unzip \
    git \
    curl \
    lsb-release \
    manpages-dev \
    build-essential \
    libgl1-mesa-glx \
    mesa-utils\
    libboost-dev \
    libxerces-c-dev \
    libeigen3-dev\
    python3.10 \
    python3-pip \
    python3-tk \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

#RUN pip install torch==2.5.1 torchvision==0.20.1 torchaudio==2.5.1 -f https://download.pytorch.org/whl/cu124
