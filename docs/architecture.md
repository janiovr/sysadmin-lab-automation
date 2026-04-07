# Architecture

## Overview

This project simulates a small infrastructure lab environment for Sysadmin / DevOps practice.

The lab is composed of three main services running in Docker containers:

* **Nginx**: serves the lab homepage
* **Portainer**: provides container management UI
* **Uptime Kuma**: provides monitoring and uptime checks

## Service Flow

```text
User (Browser)
     ↓
 Local Machine
     ↓
 Docker Compose
     ↓
 ├── Nginx        → http://localhost:8080
 ├── Portainer    → http://localhost:9000
 └── Uptime Kuma  → http://localhost:3001
```

## Networking

The services are connected through Docker networking, allowing internal communication by service name.

Example:

* Uptime Kuma monitors Nginx using the internal Docker service name:

  * `http://nginx`

This validates:

* container DNS resolution
* service reachability
* monitoring behavior during downtime and recovery

## Monitoring Scenario

A practical failure test can be performed with:

```bash
docker stop devops-lab-nginx
docker start devops-lab-nginx
```

Expected behavior:

* Uptime Kuma detects the Nginx service as unavailable
* after restart, the monitor returns to healthy status

## Purpose

This architecture was designed to demonstrate:

* Docker Compose service orchestration
* local infrastructure organization
* monitoring and incident validation
* troubleshooting of networking between containers
