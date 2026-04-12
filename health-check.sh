   #!/bin/bash
   echo "=== SysAdmin Health Check - VPS Oracle Cloud (Janio Lab) ==="
   echo "📅 Data/Hora: $(date)"
   echo "🖥️ Uptime: $(uptime)"
   echo "💾 Memória: $(free -h | grep Mem)"
   echo "📊 Disco: $(df -h / | tail -1)"
   echo "🐳 Docker Containers: $(docker ps --format 'table {{.Names}}\t{{.Status}}')"
   echo "🔥 Processos Top: $(ps aux | head -5 | awk '{print $1" "$2" "$11}')"  # Só USER/PID/CMD (sem detalhes)
   echo "🔒 SSH Status: $(sudo fail2ban-client status sshd 2>/dev/null || echo 'Fail2ban não instalado')"
