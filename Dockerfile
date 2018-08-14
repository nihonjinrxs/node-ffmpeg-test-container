FROM node:10-stretch

LABEL author="Ryan B. Harvey <ryan.b.harvey@gmail.com>"

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ffmpeg=7:3.2.12-1~deb9u1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Check things out
RUN ffmpeg -buildconf
RUN node -v
RUN npm -v

# Install gnomon
RUN npm install -g gnomon

# Copy script
WORKDIR /home/node
COPY start.sh .
RUN chown -R node:node .
RUN chmod +x ./start.sh

CMD "./start.sh"
