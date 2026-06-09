#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
docker compose -f "$SCRIPT_DIR/../docker/dolibarr-compose.yml" up -d
echo ""
echo "Dolibarr disponible en: http://localhost:8081"
echo "Usuario: admin / Contraseña: admin123"
