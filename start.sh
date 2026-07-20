#!/bin/bash

echo "=========================================="
echo "   INICIANDO LABORATÓRIO DEVSECOPS"
echo "=========================================="
echo ""

# Verifica se o docker compose está instalado
if command -v docker compose &> /dev/null; then
    docker compose up -d
elif command -v docker-compose &> /dev/null; then
    docker-compose up -d
else
    echo "Erro: Docker Compose não encontrado."
    exit 1
fi

echo ""
echo "=========================================="
echo "TUDO PRONTO!"
echo ""
echo "[App Frontend e API] Acesse: http://localhost"
echo "[Monitoramento]      Acesse: http://localhost:3000"
echo ""