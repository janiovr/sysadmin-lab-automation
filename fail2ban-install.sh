#!/bin/bash
echo "=== Fail2ban Setup - Janio Lab ==="
sudo apt update && sudo apt install fail2ban -y
sudo systemctl enable --now fail2ban
sudo fail2ban-client status sshd
