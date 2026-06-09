#!/usr/bin/env bash
FRAPPE_DOCKER_DIR="$(cd "$(dirname "$0")/../.." && pwd)/frappe_docker"
cd "$FRAPPE_DOCKER_DIR"
docker compose -f pwd.yml down
echo "ERPNext apagado."
