## 4° Passo: Criando o arquivo .sh

Agora que você está conectado à EC2, execute o comando abaixo para assumir o usuário root:
<br><img src="..\readme-assets\Criando arq sh pt1.png">

Crie o arquivo grafana.sh:
<br><img src="..\readme-assets\Criando arq sh pt2.png">

Dentro do arquivo, cole o conteúdo do script .sh disponível neste repositório.
<br><img src="..\readme-assets\Criando arq sh pt3.png">

Importante: Altere o valor de IP_PUBLICO no script.
<br><img src="..\readme-assets\Criando arq sh pt4.png">
Esse IP público você consegue no painel da sua EC2 na AWS.

Torne o arquivo executável com o comando:
<br><img src="..\readme-assets\Criando arq sh pt5.png">

### <a href="\3° Passo - Acessando a EC2 via Terminal.md" target="_blank">Passo anterior</a>
### <a href="\4° Passo - Criando o arquivo .sh.md" target="_blank">Próximo passo</a>