FROM openhab/openhab:2.5.11

LABEL maintainer="batonogov@icloud.com"

RUN apt update && \
    apt install \
        python3 \
        python3-pip \
        -y

RUN pip3 install \
        paramiko \
        requests
