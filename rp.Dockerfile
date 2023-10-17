# Use a specific Ubuntu LTS version for stability
FROM arm32v7/ubuntu:rolling

# Update the package list, install necessary dependencies, and clean up in a single RUN step
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libopencv-core4.2 \
    libopencv-imgcodecs4.2 \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libdc1394-22 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
