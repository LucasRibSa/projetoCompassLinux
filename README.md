# projetoCompassLinux


### Monitoramento de Serviço com Logs

- Este projeto implementa um script em Bash para monitorar o status de um serviço do sistema, como o nginx. O script verifica o status do serviço periodicamente, grava logs indicando se ele está "ONLINE" ou "OFFLINE", e armazena os registros em arquivos separados.

### Funcionalidades:

- Monitoramento automático de serviços do sistema.
- Geração de logs organizados por status:
- nginx-online.log: Quando o serviço está ativo.
- nginx-offline.log: Quando o serviço está inativo.
- Agendamento via cron para execução periódica.

### Tecnologias Utilizadas:

- Shell Script (Bash)
- Sistema operacional Linux (testado no Ubuntu)
- systemctl para verificar o status do serviço
- crontab para agendamento

### Estrutura de Arquivos:

A estrutura do projeto é a seguinte:
```bash
AtividadeCompass/
├── logs/
│   ├── nginx-online.log
│   └── nginx-offline.log
├── verifica_servico.sh
└── README.md
```

- logs/: Diretório onde os arquivos de log serão armazenados.

- verifica_servico.sh: Script principal para monitorar o serviço.

- README.md: Documentação do projeto.

### Como Configurar:

### 1. Configurar o Script

Clone este repositório para sua máquina local:
```bash
git clone https://github.com/SEU_USUARIO/projetoCmpassLinux.git
cd projetoCompassLinux
```

Dê permissão de execução ao script:

```bash
chmod +x verifica_servico.sh
```

### 2. Testar o Script

Execute o script manualmente para testar:

```bash
./meu_script.sh
```
Verifique os arquivos de log gerados no diretório logs/.

### 3. Configurar o Cron

Para executar o script automaticamente a cada 5 minutos:

Abra o crontab:

```bash
crontab -e
```
Adicione a seguinte linha ao arquivo:

```bash
*/5 * * * * /caminho/completo/meu_script.sh
```

Salve e saia do editor.

### 4. Logs de Erro

Se desejar simular um estado "OFFLINE", pare o serviço nginx manualmente:

```bash
sudo systemctl stop nginx
```

Rode o script novamente e verifique o arquivo nginx-offline.log.

### Dicas

Certifique-se de ter permissões adequadas para rodar comandos com systemctl e gravar em diretórios protegidos.

Para evitar problemas de permissão, o diretório logs/ foi configurado para ficar no mesmo local do script, facilitando o controle via Git.

### Autor

Lucas Ribeiro Meira e Sá
