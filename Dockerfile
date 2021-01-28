FROM openhab/openhab

LABEL maintainer="batonogov@icloud.com"

RUN apt update && \
    apt install \
        python3 \
        python3-pip \
        -y
