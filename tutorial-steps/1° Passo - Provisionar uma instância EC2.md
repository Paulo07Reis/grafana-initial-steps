## 1° Passo: Provisionar uma instância EC2

Acesse sua conta AWS e vá até o painel EC2.
<br><img src="..\readme-assets\Painel EC2.png"/>

Clique no botão laranja “Executar instância”. Você será direcionado para a página de configuração:
<br><img src="..\readme-assets\Criando EC2 pt1.png"/>

<br><b>Observação: As configurações da instância podem variar conforme sua necessidade, mas aqui utilizamos um setup simples.</b>

Defina o nome da instância e escolha a imagem do sistema operacional (neste guia, usamos Linux Ubuntu, recomendado para compatibilidade com o script .sh).
<br><img src="..\readme-assets\Criando EC2 pt2.png"/>
Selecione o tipo da instância (no exemplo, usamos t3.micro).

Crie um par de chaves para acessar a instância via SSH posteriormente:
<br><img src="..\readme-assets\Criando EC2 pt3.png"/>
Ao clicar em “Criar par de chaves”, um arquivo .pem será baixado. Guarde-o em local seguro para uso futuro.

Configure a rede e o armazenamento (Inicialmente liberamos apenas a conexão via SSH e definimos 8 GB de armazenamento)
<br><img src="..\readme-assets\Criando EC2 pt4.png"/>

Clique em “Executar instância”. Se tudo estiver correto, você verá a seguinte tela:
<br><img src="..\readme-assets\Criando EC2 pt5.png"/>


### <a href="\2° Passo - Configurando o Security Group.md" target="_blank">Próximo passo</a>