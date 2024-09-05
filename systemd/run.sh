docker build -t systemd_test .
docker run -t --rm --name systemd_test \
--privileged --cap-add SYS_ADMIN --security-opt seccomp=unconfined \
--cgroup-parent=docker.slice --cgroupns private \
--tmpfs /tmp --tmpfs /run --tmpfs /run/lock \
systemd_test
