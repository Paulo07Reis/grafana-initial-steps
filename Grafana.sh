#!/bin/bash
# ============================================================
# Script de instalação e configuração automática do Grafana
# ============================================================

# Atualiza a lista de pacotes
sudo apt-get update -y

# Instala dependências necessárias
sudo apt-get install -y musl adduser libfontconfig1 wget

# Corrige pacotes quebrados, se existirem
sudo apt-get install -f -y

# Baixa o pacote do Grafana Enterprise
wget https://dl.grafana.com/grafana-enterprise/release/12.1.1/grafana-enterprise_12.1.1_16903967602_linux_amd64.deb

# Instala o pacote .deb do Grafana
sudo dpkg -i grafana-enterprise_12.1.1_16903967602_linux_amd64.deb

# Recarrega os serviços do systemd
sudo systemctl daemon-reload

# Habilita o Grafana para iniciar automaticamente no boot
sudo systemctl enable grafana-server

# Inicia o Grafana
sudo systemctl start grafana-server

# Instala o plugin do Zabbix para Grafana
grafana-cli plugins install alexanderzobnin-zabbix-app

# Reinicia o Grafana para aplicar o plugin
sudo systemctl restart grafana-server

# ============================================================
# Configuração do Grafana (grafana.ini)
# Aqui usamos 'sed' para editar automaticamente o arquivo
# Substituímos os parâmetros importantes para permitir acesso externo
# ============================================================

# IP público da instância (altere manualmente abaixo ou passe como parâmetro)
IP_PUBLICO="SEU_IP_PUBLICO"

# Habilita o protocolo HTTP
sudo sed -i 's/;protocol = .*/protocol = http/' /etc/grafana/grafana.ini

# Configura o Grafana para ouvir em todas as interfaces (0.0.0.0)
sudo sed -i 's/;http_addr = .*/http_addr = 0.0.0.0/' /etc/grafana/grafana.ini

# Garante que a porta seja 3000
sudo sed -i 's/;http_port = .*/http_port = 3000/' /etc/grafana/grafana.ini

# Define o domínio público (IP da instância)
sudo sed -i "s/;domain = .*/domain = $IP_PUBLICO/" /etc/grafana/grafana.ini

# Define a URL raiz pública
sudo sed -i "s|;root_url = .*|root_url = http://$IP_PUBLICO:3000/|" /etc/grafana/grafana.ini

# Reinicia o Grafana para aplicar configurações
sudo systemctl restart grafana-server

# Mensagem final
echo "============================================================"
echo " Grafana instalado e configurado com sucesso!"
echo " Acesse: http://$IP_PUBLICO:3000"
echo " Usuário padrão: admin | Senha padrão: admin"
echo "============================================================"
