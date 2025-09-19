#!/bin/bash
#Sirve para evitar que el script siga ejecutando cosas cuando ya falló un paso anterior.
set -e

# Instalar pnpm
npm install -g pnpm

# Verificar instalación
pnpm --version
# Permitir builds automáticamente en PNPM
export PNPM_ALLOW_BUILD_SCRIPTS=true

# Instalar dependencias y usar store local
# pnpm install --store-dir /workspace/frontend-oauth2/.pnpm-store


# Instalar dependencias con store local y sin prompts
pnpm install --store-dir /workspace/frontend-oauth2/.pnpm-store --unsafe-perm