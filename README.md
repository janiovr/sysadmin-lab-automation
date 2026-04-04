# SysAdmin Lab Automation (Docker + Ansible)

Real Junior SysAdmin/DevOps lab. Automates secure setup (SSH key-only, UFW firewall, Docker) + stack: Nginx, Portainer, CNC Machine Dashboard.

## Features
- Ansible IaC for SSH, UFW, Docker install.
- Docker lab: Nginx (custom page 8080), Portainer (9000), CNC Dashboard (8081).
- Production-ready: Multi-PC/VPS (Vultr), Raspberry Pi CNC/Umbrel.

## Quick Deploy (2 Commands)
1. Clone: `git clone https://github.com/janiovr/sysadmin-lab-automation.git`
2. Run: `ansible-playbook playbooks/base-setup.yml && ansible-playbook playbooks/docker-lab.yml`

Demo: [https://deserticolous-superceremoniously-kaylynn.ngrok-free.dev]

![Docker PS](screenshots/docker-ps.png)
![UFW Status](screenshots/ufw.png)
![Dashboard CNC](screenshots/cnc-dashboard.png)

Skills: Linux/Ubuntu, Ansible, Docker Compose, Nginx, UFW, SSH keys, CNC simulation.

**Why?** Transition from CNC/masternodes/VPS to remote SysAdmin USD gigs.

---

## Português (Brasil/LATAM)
Lab real SysAdmin/DevOps Júnior. Automatiza SSH seguro, UFW, Docker + stack Nginx/Portainer/dashboard CNC simulação.

Deploy rápido: Clone + 2 playbooks Ansible.

Skills: Linux, Ansible, Docker, Nginx, UFW, SSH, CNC.
