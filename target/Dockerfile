FROM ubuntu:24.04 as base

RUN apt update && apt install --yes openssh-server sudo vim
RUN mkdir -p /run/sshd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
RUN useradd -m -s /bin/bash target
RUN echo "target:pass" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
