FROM openkylin:yangtze

RUN echo \
"deb http://archive.build.openkylin.top/openkylin nile main cross pty \n\
deb http://archive.build.openkylin.top/openkylin nile-security main cross pty \n\
deb http://archive.build.openkylin.top/openkylin nile-updates main cross pty \n\
deb http://archive.build.openkylin.top/openkylin nile-proposed main cross pty \n\
deb http://ppa.build.openkylin.top/kylinsoft/anything/openkylin nile main \n\
deb http://ppa.build.openkylin.top/kylinsoft/wayland-next/openkylin yangtze main" \
    > /etc/apt/sources.list \
    && apt update && apt upgrade -y 

RUN apt install -y \
    python3 \
    python3-pip \
    git \
    zsh

CMD [ "zsh" ]
