FROM domistyle/idrac6

MAINTAINER zhangdahai

RUN echo "[Info] 正在替换apt源为清华apt源..." && \
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse > /etc/apt/sources.list && \
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse >> /etc/apt/sources.list && \
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse >> /etc/apt/sources.list && \
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse >> /etc/apt/sources.list && \
echo "[Info] 正在更新源..." && \
apt update && \
apt-get update && \
apt-get install -y vim net-tools && \
apt-get remove -y *jdk* && \
apt install -y openjdk-8-jre && \
apt install -y openjdk-8-jre-headless && \
apt install -y icedtea-plugin && \
apt-get install -y ipmitool && \
apt-get install -y curl nodejs

RUN sed -i '701,705d' /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/java.security