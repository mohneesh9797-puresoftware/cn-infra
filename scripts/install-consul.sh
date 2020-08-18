#!/bin/bash
set -e

CONSUL_VERSION=1.5.3
if [ `uname -m` = 'aarch64' ]; then
    download_url=https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_arm64.zip
else
    download_url=https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip
fi

wget -nv -O /tmp/consul.zip ${download_url}
unzip -o /tmp/consul.zip -d /tmp/consul
sudo mv /tmp/consul/consul /usr/local/bin
rm -rf /tmp/consul.zip /tmp/consul
