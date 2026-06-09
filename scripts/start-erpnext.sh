#!/usr/bin/env bash
set -e

FRAPPE_DOCKER_DIR="$(cd "$(dirname "$0")/../.." && pwd)/frappe_docker"

if [ ! -d "$FRAPPE_DOCKER_DIR" ]; then
  echo "Clonando frappe_docker..."
  git clone https://github.com/frappe/frappe_docker "$FRAPPE_DOCKER_DIR"
fi

cd "$FRAPPE_DOCKER_DIR"

echo "Levantando ERPNext..."
docker compose -f pwd.yml up -d

echo ""
echo "Esperando a que el sitio esté listo (puede tardar 2-3 min)..."
docker compose -f pwd.yml logs -f create-site
