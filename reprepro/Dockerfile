FROM linuxdeepin/deepin

ARG DEBCONF_NOWARNINGS "yes"
ARG DEBIAN_FRONTEND "noninteractive"
ARG DEBCONF_NONINTERACTIVE_SEEN "true"

RUN apt-get update && \
    apt-get --no-install-recommends -y install \
        nginx reprepro gnupg zsh git ssh vim rsync && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -m -g users deepin && \
    usermod -aG sudo deepin && \
    chsh -s /bin/zsh deepin && \
    echo deepin:deepin | chpasswd

RUN rm /var/www/html/index.nginx-debian.html

EXPOSE 80

# 让Nginx在Docker容器中以非守护进程模式运行
CMD ["nginx", "-g", "daemon off;"]