FROM linuxdeepin/deepin
# Using systemd in docker: https://systemd.io/CONTAINER_INTERFACE/
# Make sure cgroupv2 is enabled. To check this: cat /sys/fs/cgroup/cgroup.controllers
ENV container docker
STOPSIGNAL SIGRTMIN+3
VOLUME [ "/tmp", "/run", "/run/lock" ]
WORKDIR /
# Remove unnecessary units
RUN apt update -y && apt install -y systemd
RUN rm -f /lib/systemd/system/multi-user.target.wants/* \
  /etc/systemd/system/*.wants/* \
  /lib/systemd/system/local-fs.target.wants/* \
  /lib/systemd/system/sockets.target.wants/*udev* \
  /lib/systemd/system/sockets.target.wants/*initctl* \
  /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* \
  /lib/systemd/system/systemd-update-utmp*
CMD [ "/usr/lib/systemd/systemd", "log-level=info", "unit=sysinit.target" ]
