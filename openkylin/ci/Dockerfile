FROM chenchongbiao/openkylin:yangtze

RUN echo \
"deb http://archive.build.openkylin.top/openkylin yangtze main \n\
deb http://archive.build.openkylin.top/OTHER/Internal-mirror/repack5/baseok0.fix yangtze main \n\
deb http://archive.build.openkylin.top/OTHER/Internal-mirror/stage0 yangtze main \n\
deb http://archive.build.openkylin.top/openkylin yangtze-security main \n\
deb http://archive.build.openkylin.top/openkylin yangtze-updates main \n\
deb http://archive.build.openkylin.top/openkylin yangtze-proposed main " \
    > /etc/apt/sources.list \
    && apt update && apt upgrade -y 
CMD [ "bash" ]
