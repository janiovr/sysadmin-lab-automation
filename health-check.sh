
     #!/bin/bash
     echo "=== SysAdmin Health Check - VPS Oracle Cloud (Janio Lab) ==="
     echo "📅 Data/Hora: $(date)"
     echo "🖥️ Uptime: $(uptime)"
     echo "💾 Memória: $(free -h | grep Mem)"
     echo "📊 Disco: $(df -h / | tail -1)"
     echo "🐳 Docker Containers: $(docker ps --format 'table {{.Names}}\t{{.Status}}')"
     echo "🔥 Processos Top: $(ps aux | head -5)"
     echo "🔒 Logs Recentes (SSH): $(tail -3 /var/log/auth.log)"
