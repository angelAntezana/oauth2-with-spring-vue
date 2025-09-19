#!/bin/bash
#Sirve para evitar que el script siga ejecutando cosas cuando ya falló un paso anterior.
set -e

# Instalar pnpm
npm install -g pnpm

# Verificar instalación
pnpm --version
