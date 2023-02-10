FROM quay.io/centos/centos:stream9

RUN dnf install -y python3-pip
RUN pip install python-openstackclient

RUN mkdir -p ~/.config/openstack
COPY ./clouds.yaml /root/.config/openstack
