FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get install -y vim python metasploit-framework curl gdb gcc make procps net-tools netcat socat curl \
    amass nmap tcpdump john screen \
    && apt-get clean \
    && echo "alias ls='ls --color'" >> /root/.bashrc

WORKDIR /data
