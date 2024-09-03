FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbookworm

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

# title
ENV TITLE="Debian gxde"

RUN \
  echo "**** add icon ****" && \
  curl -o \
    /kclient/public/icon.png \
    https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/webtop-logo.png && \
  echo "deb [trusted=true] http://dde15.debian12.gfdgdxi.top/ ./" >> /etc/apt/sources.list.d/tmp.list && \
  echo "**** install packages ****" && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
    chromium \
    chromium-l10n \
    deepin-desktop-base \
    dde-desktop \
    libdmr0.1 \
    dde-dock \
    dde-launcher \
    dde-control-center \
    startdde \
    dde-session-ui \
    deepin-artwork \
    dde-file-manager \
    dde-qt5integration \
    eject \
    deepin-wallpapers \
    dde-kwin \
    deepin-terminal \
    deepin-editor && \
  echo "deb [trusted=true] http://mirror.gxde.gfdgdxi.top/gxde-os-mirror ./" > /etc/apt/sources.list.d/tmp.list && \
  apt-get update -y && apt-get upgrade -y && \
  rm /etc/apt/sources.list.d/tmp.list && \
  echo "**** application tweaks ****" && \
  sed -i \
    's#^Exec=.*#Exec=/usr/local/bin/wrapped-chromium#g' \
    /usr/share/applications/chromium.desktop && \
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
