# Plasticostino ERP

ERPNext v15 autohospedado para facturación y contabilidad.

## Requisitos locales
- Docker >= 24
- Docker Compose v2
- ~4 GB RAM libre

## Setup local (primera vez)

```bash
./scripts/start.sh
```

Abre http://localhost:8080 — user: `Administrator` / pass: `admin`

## Comandos

| Comando | Acción |
|---------|--------|
| `./scripts/start.sh` | Levanta o crea el entorno |
| `./scripts/stop.sh` | Apaga los contenedores |
| `./scripts/reset.sh` | Borra todo y empieza de cero |

## Estructura

```
customizations/
  print-formats/   # Formatos de impresión exportados como JSON
  data-import/     # CSVs de ejemplo para importar clientes/proveedores
docs/
  validacion-local.md   # Checklist de requerimientos validados
```
