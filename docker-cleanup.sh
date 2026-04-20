#!/bin/bash
echo "=== Docker Cleanup Dia 2 - Non-Root ==="
echo "Antes:"
docker system df
docker system prune -a --volumes -f
echo "Depois:"
docker system df
echo "Containers: $(docker ps --format '{{.Names}}')"
