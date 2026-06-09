#!/usr/bin/env bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
docker compose -f "$SCRIPT_DIR/../docker/dolibarr-compose.yml" down
echo "Dolibarr apagado."
