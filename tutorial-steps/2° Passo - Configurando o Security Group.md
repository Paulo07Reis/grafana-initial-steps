## 2° Passo: Configurando o Security Group

No painel de instâncias, selecione a EC2 que acabamos de criar.
Em seguida, vá até a aba Segurança e clique no link azul localizado no bloco “Grupo de segurança” para acessar as configurações do SG.
<br><img src="..\readme-assets\Configurando SG pt1.png"/>

Na página do Security Group, você verá que, por padrão, apenas a porta SSH está liberada para acesso à EC2.
Para permitir outras conexões, clique em “Editar regras de entrada”.
<br><img src="..\readme-assets\Configurando SG pt2.png"/>

Clique em “Adicionar regra” e configure as novas regras conforme abaixo:
<br><img src="..\readme-assets\Configurando SG pt3.png"/>
- HTTP – Origem: Qualquer IPv4 (0.0.0.0/0)
- HTTPS – Origem: Qualquer IPv4 (0.0.0.0/0)
- TCP Personalizado – Porta: 3000, Origem: Qualquer IPv4 (0.0.0.0/0)

Essas regras permitem que sua EC2 receba conexões HTTP, HTTPS e do Grafana (porta 3000) de qualquer endereço IP.

Depois de adicionar todas as regras, clique em Salvar regras.
Agora o Security Group estará configurado para permitir acesso às portas necessárias.
<br><img src="..\readme-assets\Configurando SG pt4.png"/>

### <a href="\1° Passo - Provisionar uma instância EC2.md" target="_blank">Passo anterior</a>
### <a href="\3° Passo - Acessando a EC2 via Terminal.md" target="_blank">Próximo passo</a>