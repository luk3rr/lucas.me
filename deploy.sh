#!/bin/bash
set -e

if [ -z "$LUCAS_ME_DEPLOY_HOST" ]; then
    echo "Erro: variável LUCAS_ME_DEPLOY_HOST não definida."
    exit 1
fi

hugo
scp -r public/. "$LUCAS_ME_DEPLOY_HOST"
echo "Deploy concluído."
