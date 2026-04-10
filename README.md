# 🚀 SysAdmin Lab Automation

![Linux](https://img.shields.io/badge/Linux-Ubuntu-E95420?style=flat-square&logo=ubuntu&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?style=flat-square&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-Reverse_Proxy-009639?style=flat-square&logo=nginx&logoColor=white)
![Monitoring](https://img.shields.io/badge/Monitoring-Uptime_Kuma-5CDD8B?style=flat-square)
![HTTPS](https://img.shields.io/badge/HTTPS-Let's_Encrypt-003A70?style=flat-square&logo=letsencrypt&logoColor=white)
![Status](https://img.shields.io/badge/Status-Live-success?style=flat-square)

A hands-on infrastructure lab built to simulate real-world **Linux SysAdmin / DevOps workflows** using **Docker**, **Nginx**, **reverse proxying**, **HTTPS**, and **service monitoring**.

This project started as a local container lab and evolved into a lightweight **public cloud deployment** hosted on a VPS, with real monitoring, HTTPS, and service recovery testing.

---

## 🌐 Live Links

- **Live Demo:** `https://janiosysadminlab.duckdns.org`
- **Status Page / Monitoring:** `https://janiosysadminstatus.duckdns.org`

---

## 📌 Project Overview

This lab demonstrates how to build, expose, monitor, and maintain lightweight services in both **local** and **cloud** environments.

It was developed as part of my transition toward **Junior Linux SysAdmin / Linux Support roles**, with a practical focus on:

- Linux infrastructure setup
- Docker-based service deployment
- Reverse proxy configuration
- Domain and HTTPS setup
- Monitoring and uptime validation
- Troubleshooting connectivity and service availability

---

## ✅ What This Project Demonstrates

- Running containerized services with Docker
- Publishing services through a **host-level Nginx reverse proxy**
- Mapping public domains with **DuckDNS**
- Securing services with **Let's Encrypt HTTPS certificates**
- Monitoring uptime and recovery events with **Uptime Kuma**
- Simulating service failures and validating recovery
- Operating a lightweight cloud lab on a **low-resource VPS**

---

## 🧱 Architecture

### Cloud Deployment

    Browser
       ↓
    DuckDNS domain
       ↓
    Nginx on host VPS (80/443, reverse proxy, HTTPS)
       ↓
    ├── nginx-cloud container (landing page) → 127.0.0.1:8080
    └── uptime-kuma container (monitoring)  → 127.0.0.1:3001

### Local Lab

    User
       ↓
    Docker / Docker Compose
       ↓
    ├── Nginx
    ├── Portainer
    └── Uptime Kuma

---

## 🛠️ Tech Stack

- **Linux (Ubuntu Server)**
- **Docker**
- **Docker Compose**
- **Nginx**
- **Uptime Kuma**
- **Portainer**
- **DuckDNS**
- **Let's Encrypt / Certbot**
- **Basic firewall and networking configuration**
- **Cloud VPS deployment**

---

## ⚙️ Services

### 🔹 Nginx
- Runs on the **host VPS**
- Acts as the main **reverse proxy**
- Publishes internal containerized services to the internet
- Handles **HTTP to HTTPS redirection**
- Routes requests to internal services bound to loopback addresses

### 🔹 Landing Page Service
- Static infrastructure landing page
- Runs inside a Docker container
- Exposed internally on `127.0.0.1:8080`
- Published through host-level Nginx and HTTPS

### 🔹 Uptime Kuma
- Monitoring tool for service availability
- Detects downtime and recovery events
- Provides a visual dashboard for uptime checks
- Runs internally on `127.0.0.1:3001`
- Published securely through Nginx reverse proxy

### 🔹 Portainer
- Used in the local lab environment for container management
- Helps inspect services, logs, and container state
- Preserved as part of the broader lab structure

---

## ☁️ Cloud Deployment Highlights

This project was extended from a local Docker lab into a **public cloud deployment** hosted on a lightweight VPS.

### Implemented cloud-side tasks
- Public VPS setup
- Dockerized service deployment
- Host-based Nginx reverse proxy
- DuckDNS domain mapping
- HTTPS with Let's Encrypt
- Certificate renewal validation
- Firewall and connectivity troubleshooting
- Internal-only container exposure using loopback bindings

---

## 📊 Monitoring Simulation

This lab includes real monitoring scenarios using **Uptime Kuma**.

### Tested scenarios
- Service failure simulation using `docker stop`
- Automatic downtime detection
- Recovery validation using `docker start`
- Public uptime checks through HTTPS

### Example
    docker stop nginx-cloud
    docker start nginx-cloud

This allows practical testing of:

- service interruption
- monitoring accuracy
- recovery visibility
- operational troubleshooting

---

## 🧪 Real Operational Notes

During implementation, this project included practical troubleshooting such as:

- fixing conflicting Nginx server blocks
- validating DNS resolution with DuckDNS
- adjusting container exposure from public ports to loopback bindings
- configuring HTTPS certificates and testing renewal
- confirming reverse proxy behavior across multiple services
- simulating downtime for monitoring validation

---

## 🔍 Key Skills Demonstrated

- Linux system administration
- Docker container deployment
- Docker Compose orchestration
- Reverse proxy configuration with Nginx
- HTTPS setup with Let's Encrypt
- Domain-based service publishing
- Monitoring and uptime validation
- Firewall and network troubleshooting
- Lightweight VPS operations
- Service recovery testing
- Infrastructure documentation

---

## 📂 Project Structure

    sysadmin-lab-automation/
    ├── docker-lab/
    │   ├── docker-compose.yml
    │   ├── nginx/
    │   │   └── site/
    │   ├── portainer/
    │   ├── uptime-kuma/
    │   └── docs/
    ├── playbooks/
    ├── docs/
    ├── screenshots/
    └── README.md

---

## 🚀 How to Run Locally

Start the local lab:

    cd docker-lab
    docker compose up -d

---

## 🌍 Local Service Access

- **Nginx:** `http://localhost:8080`
- **Portainer:** `http://localhost:9000`
- **Uptime Kuma:** `http://localhost:3001`

---

## 📸 Screenshots

### Landing Page (HTTPS)
![Landing Page HTTPS](screenshots/landing-page-https.png)

### Uptime Kuma Dashboard
![Uptime Kuma Dashboard](screenshots/uptime-kuma-dashboard.png)

### Service Down Detection
![Service Down Detection](screenshots/service-down-detection.png)

### Service Recovery
![Service Recovery](screenshots/service-recovery.png)

### Docker Containers Running
![Docker Containers Running](screenshots/docker-ps.png)

### Nginx Validation
![Nginx Validation](screenshots/nginx-validation.png)

---

## 📈 Current Status

### Implemented
- Local Docker lab
- Public VPS deployment
- Nginx reverse proxy
- DuckDNS domain access
- HTTPS with Let's Encrypt
- Certificate renewal validation
- Uptime Kuma monitoring
- Real downtime and recovery simulation

### In Progress
- Additional hardening
- Documentation refinement
- Optional private admin tooling
- Expanded monitoring scenarios

---

## 📚 Lessons Learned

This project helped reinforce practical concepts such as:

- separating public exposure from internal container ports
- using a host reverse proxy instead of exposing containers directly
- troubleshooting DNS, routing, and firewall issues
- validating HTTPS configuration in real cloud conditions
- monitoring real service downtime and confirming recovery

---

## 🛣️ Next Improvements

Planned improvements for the next iterations:

- refine firewall and access policies
- improve documentation and deployment notes
- add more monitoring scenarios
- keep admin tooling private
- expand the lab with additional lightweight services

---

## 🎯 Purpose

This lab was built to gain hands-on experience with **Linux infrastructure**, **public service exposure**, **monitoring**, and **troubleshooting** in preparation for **remote Junior Linux SysAdmin / Linux Support opportunities**.

---

## 👨‍💻 Author

**Jânio Vieira Rodrigues**  
Linux • Docker • Nginx • Monitoring • Infrastructure
