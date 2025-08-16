# Grafana - Guia de Instalação Inicial

Este repositório foi criado para simplificar a instalação do Grafana em uma instância EC2 da AWS, utilizando um script .sh e configurando a autenticação dupla via GitHub usando OAuth.


Seguindo este tutorial, você vai aprender e praticar os seguintes fundamentos:
- Serviços AWS:
  - EC2
  - Security Group (SG)
- Comandos básicos do Linux
- Automação com scripts .sh
- Configuração de autenticação via OAuth
<br><br>
## Passo 1: Provisionar uma instância EC2

Acesse sua conta AWS e vá até o painel EC2.
<br><img src="\readme-assets\Painel EC2.png"/>

Clique no botão laranja “Executar instância”. Você será direcionado para a página de configuração:
<br><img src="\readme-assets\Criando EC2 pt1.png"/>

<br><b>Observação: As configurações da instância podem variar conforme sua necessidade, mas aqui utilizamos um setup simples.</b>

Defina o nome da instância e escolha a imagem do sistema operacional (neste guia, usamos Linux Ubuntu, recomendado para compatibilidade com o script .sh).
<br><img src="\readme-assets\Criando EC2 pt2.png"/>
Selecione o tipo da instância (no exemplo, usamos t3.micro).

Crie um par de chaves para acessar a instância via SSH posteriormente:
<br><img src="\readme-assets\Criando EC2 pt3.png"/>
Ao clicar em “Criar par de chaves”, um arquivo .pem será baixado. Guarde-o em local seguro para uso futuro.

Configure a rede e o armazenamento (Inicialmente liberamos apenas a conexão via SSH e definimos 8 GB de armazenamento)
<br><img src="\readme-assets\Criando EC2 pt4.png"/>

Clique em “Executar instância”. Se tudo estiver correto, você verá a seguinte tela:
<br><img src="\readme-assets\Criando EC2 pt5.png"/>
<br><br>
## Passo 2: Configurando o Security Group

No painel de instâncias, selecione a EC2 que acabamos de criar.
Em seguida, vá até a aba Segurança e clique no link azul localizado no bloco “Grupo de segurança” para acessar as configurações do SG.
<br><img src="\readme-assets\Configurando SG pt1.png"/>

Na página do Security Group, você verá que, por padrão, apenas a porta SSH está liberada para acesso à EC2.
Para permitir outras conexões, clique em “Editar regras de entrada”.
<br><img src="\readme-assets\Configurando SG pt2.png"/>

Clique em “Adicionar regra” e configure as novas regras conforme abaixo:
<br><img src="\readme-assets\Configurando SG pt3.png"/>
- HTTP – Origem: Qualquer IPv4 (0.0.0.0/0)
- HTTPS – Origem: Qualquer IPv4 (0.0.0.0/0)
- TCP Personalizado – Porta: 3000, Origem: Qualquer IPv4 (0.0.0.0/0)

Essas regras permitem que sua EC2 receba conexões HTTP, HTTPS e do Grafana (porta 3000) de qualquer endereço IP.

Depois de adicionar todas as regras, clique em Salvar regras.
Agora o Security Group estará configurado para permitir acesso às portas necessárias.
<br><img src="\readme-assets\Configurando SG pt4.png"/>

<br><br>
## Passo 3: Acessando a EC2 via Terminal

No painel de instâncias, selecione a EC2 que você criou e clique em “Conectar”.
<br><img src="\readme-assets\Acessando EC2 pt1.png" alt="Conectar EC2">

Na página Conectar, selecione a opção “Cliente SSH” e copie o comando indicado no 4° passo.
<br><img src="\readme-assets\Acessando EC2 pt2.png" alt="Cliente SSH">

Lembre-se da chave de segurança que você baixou ao criar a EC2.
Abra um terminal no diretório onde a chave .pem está localizada.

Cole e execute o comando que você copiou na etapa anterior.
<br><img src="\readme-assets\Acessando EC2 pt3.png" alt="Usando chave SSH">

Ao executar o comando, digite “yes” quando solicitado.

Pronto! Você estará conectado à sua instância EC2 via SSH.
<br><img src="\readme-assets\Acessando EC2 pt4.png" alt="Conectado via SSH">

