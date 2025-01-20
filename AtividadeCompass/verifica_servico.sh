#!/bin/bash

SERVICO="nginx"

# Comando para definir o diretório onde os arquivos de log serão salvos
DIRETORIO_LOG="./logs"  

# Comando para criar o diretório de logs
mkdir -p $DIRETORIO_LOG

# Comando para verificar o status do serviço
STATUS=$(systemctl is-active $SERVICO)
echo "Status do serviço $SERVICO: $STATUS"

# Comando para passar data e hora atual
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')

# Comando para definir o o status e a mensagem do serviço
if [ "$STATUS" == "active" ]; then
    ARQUIVO="$DIRETORIO_LOG/$SERVICO-online.log"
    MENSAGEM="ONLINE"
else
    ARQUIVO="$DIRETORIO_LOG/$SERVICO-offline.log"
    MENSAGEM="OFFLINE"
fi

# Comando para escrever no arquivo de log
echo "$DATA_HORA - $SERVICO - Status: $STATUS - $MENSAGEM" >> $ARQUIVO

# Comando para imprimir a mensagem de log
echo "Log gravado em: $ARQUIVO"

