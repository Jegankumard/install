#!/bin/bash
# Install nodeexporter
sudo useradd --system --no-create-home --shell /bin/false node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
tar -xvf node_exporter-1.6.1.linux-amd64.tar.gz

sudo mv node_exporter-1.6.1.linux-amd64/node_exporter /usr/local/bin/
rm -rf node_exporter*
node_exporter --version
node_exporter --help

sudo cat > /etc/systemd/system/node_exporter.service << EOL
[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

StartLimitIntervalSec=500
StartLimitBurst=5

[Service]
User=node_exporter
Group=node_exporter
Type=simple
Restart=on-failure
RestartSec=5s
ExecStart=/usr/local/bin/node_exporter \
    --collector.logind

[Install]
WantedBy=multi-user.target
EOL
##check status of node_exporter
sudo systemctl enable node_exporter
sudo systemctl start node_exporter
sudo systemctl status node_exporter
journalctl -u node_exporter -f --no-pager

# create a static target with job_name and static_configs

sudo cat >> /etc/prometheus/prometheus.yml << EOL
  - job_name: node_export
    static_configs:
      - targets: ["localhost:9100"]
EOL
promtool check config /etc/prometheus/prometheus.yml
curl -X POST http://localhost:9090/-/reload