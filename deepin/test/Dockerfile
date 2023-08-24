FROM linuxdeepin/beige

# 避免test源里面，有些软件没有，先安装一些需要的软件之后再更换test源
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
"deb https://ci.deepin.com/repo/deepin/deepin-community/testing/ unstable main dde community commercial\n\
deb-src https://ci.deepin.com/repo/deepin/deepin-community/testing/ unstable main dde community commercial" \
    > /etc/apt/sources.list \
    && apt update && apt upgrade -y 
CMD [ "bash" ]
