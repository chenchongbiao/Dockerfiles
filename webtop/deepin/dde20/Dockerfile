FROM chenchongbiao/baseimage-kasmvnc:deepinapricot

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

# title
ENV TITLE="Debian dde"

RUN \
  echo "**** add icon ****" && \
  curl -o \
    /kclient/public/icon.png \
    https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/webtop-logo.png && \
  echo "**** install packages ****" && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y --no-install-recommends \
      udisks2 || rm -v /var/lib/dpkg/info/udisks2.postinst && \
  dpkg --configure udisks2 && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y --no-install-recommends \
    chromium \
    chromium-l10n \
    libqt5core5a \
    dde-control-center \
    dde-clipboard \
    dde-desktop \
    dde-dock \
    dde-file-manager \
    dde-kwin \
    dde-launcher \
    dde-qt5integration \
    deepin-artwork \
    deepin-default-settings \
    deepin-desktop-base \
    deepin-wallpapers \
    fonts-noto \
    startdde \
    dde-calendar \
    deepin-album \
    deepin-calculator \
    deepin-draw \
    deepin-editor \
    deepin-image-viewer \
    deepin-movie \
    deepin-music \
    deepin-system-monitor \
    deepin-screen-recorder \
    deepin-terminal \
    deepin-voice-note && \
  echo "**** application tweaks ****" && \
  sed -i \
    's#^Exec=.*#Exec=/usr/local/bin/wrapped-chromium#g' \
    /usr/share/applications/chromium.desktop && \
  sed -i -E 's/#[[:space:]]?(zh_CN.UTF-8[[:space:]]+UTF-8)/\1/g' /etc/locale.gen && \
  locale-gen && \
  DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales && \
  echo "**** cleanup ****" && \
  apt-get autoclean && \
  rm -rf \
    /config/.cache \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /tmp/*

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config
