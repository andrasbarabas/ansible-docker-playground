FROM ubuntu:24.04 as base

RUN apt update && apt install --yes ansible openssh-server sshpass sudo vim
RUN useradd -m -s /bin/bash controller

WORKDIR /ansible

COPY ./controller .

USER controller

CMD ["tail", "-f", "/dev/null"]
