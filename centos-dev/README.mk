# Run the out-of-the-box image
dcup

# Reference
## build from centos
docker build --rm -t centos7-systemd - < dockerfile
docker run --privileged  -ti -e container=docker  -v /sys/fs/cgroup:/sys/fs/cgroup  centos7-systemd /usr/sbin/init