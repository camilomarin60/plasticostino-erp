#!/usr/bin/env bash
FRAPPE_DOCKER_DIR="$(cd "$(dirname "$0")/../.." && pwd)/frappe_docker"
cd "$FRAPPE_DOCKER_DIR"
echo "ADVERTENCIA: esto borrará todos los datos. Ctrl+C para cancelar."
sleep 5
docker compose -f pwd.yml down -v
echo "Entorno borrado. Corre ./scripts/start.sh para empezar de cero."
