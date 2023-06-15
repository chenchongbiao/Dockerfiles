FROM linuxdeepin/beige

# 避免ci源里面，有些软件没有，先安装一些需要的软件之后再更换ci源
RUN apt update && apt install -y \
    python3 \
    python3-pip \
    git \
    devscripts \
    quilt \
    zsh \
    apt-utils \
    bc \
    curl \
    dialog \
    diffutils \
    findutils \
    gnupg2 \
    less \
    libnss-myhostname \
    libvte-common \
    lsof ncurses-base \
    passwd \
    pinentry-curses \
    procps \
    sudo \
    time \
    wget \
    util-linux
RUN echo \
"deb [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/main/standard/ ./\n\
deb-src [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/main/standard/ ./\n\
deb [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/community/deepin_develop/ ./\n\
deb-src [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/community/deepin_develop/ ./\n\
deb [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/dde/deepin_develop/ ./\n\
deb-src [trusted=yes] https://ci.deepin.com/repo/obs/deepin:/Develop:/dde/deepin_develop/ ./" \
    > /etc/apt/sources.list \
    && apt update && apt upgrade -y 
CMD [ "bash" ]
