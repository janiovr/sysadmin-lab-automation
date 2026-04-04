# SysAdmin Lab Automation (Docker + Ansible) 🐧

An infrastructure-as-code (IaC) lab designed to automate the deployment of a secure Linux environment. This project demonstrates proficiency in **System Administration**, **Containerization**, and **Security Hardening**.

## 🚀 Quick Deploy (Ansible)

Set up the entire stack on any Ubuntu/Debian host with just two commands:

1. **Clone the repo:**
   `git clone https://github.com/janiovr/sysadmin-lab-automation.git`

2. **Run Playbooks:**
   `ansible-playbook playbooks/base-setup.yml && ansible-playbook playbooks/docker-lab.yml`

## ✨ Key Features

- **Automated Hardening:** SSH key-only authentication and UFW firewall configuration via Ansible.
- **Docker Orchestration:** Automated installation and management of Docker & Docker Compose.
- **Service Stack:** 
  - **Nginx:** Configured as a reverse proxy.
  - **Portainer:** For visual container management (Port 9000).
  - **CNC Dashboard:** Integrated machine simulation project (Port 8081).
- **Multi-Platform:** Compatible with VPS (Vultr/DigitalOcean), Raspberry Pi, and local Ubuntu servers.

## 🛠️ Tech Stack & Skills

- **OS:** Linux (Ubuntu/Debian)
- **Automation:** Ansible (IaC)
- **Containers:** Docker, Docker Compose, Portainer
- **Web Server:** Nginx
- **Security:** UFW, SSH Hardening, Key Management
- **Hardware Integration:** CNC logic and Raspberry Pi environments

## 📸 Proof of Concept

*(Add your screenshots here to show the lab in action)*
- `screenshots/docker-ps.png` (Containers running)
- `screenshots/ufw.png` (Firewall active)
- `screenshots/cnc-dashboard.png` (Integrated dashboard)

## 💡 Why this project?

This lab represents my transition from technical CNC operations and VPS management (Masternodes) to professional **Junior Linux SysAdmin** roles. It bridges real-world machine logic with modern infrastructure automation.
