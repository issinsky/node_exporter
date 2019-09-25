#!/bin/bash
RELEASE="0.18.0"
wget -c https://github.com/prometheus/node_exporter/releases/download/v${RELEASE}/node_exporter-${RELEASE}.linux-amd64.tar.gz
tar -xzvf node_exporter-${RELEASE}.linux-amd64.tar.gz

sudo mv node_exporter-${RELEASE}.linux-amd64/node_exporter /usr/local/bin/

sudo cp node_exporter.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable node_exporter
sudo systemctl start node_exporter

