## 7° Passo: Configurando o Grafana

No Grafana, acesse o menu lateral esquerdo: Administration → Authentication.
<br><img src="..\readme-assets\Grafana pt1.1.png">

Você verá diversas opções de OAuth. Como configuramos o GitHub, selecione essa opção.
<br><img src="..\readme-assets\Grafana p2.png">

Cole os valores de Client ID e Client Secret que você obteve ao criar o OAuth App no GitHub.<br><img src="\readme-assets\Grafana pt3.png">
Após salvar a configuração, deslogue do Grafana.

<br><img src="..\readme-assets\Login Grafana.png">
Note que a opção de login via GitHub já está disponível. Clique nela para autenticar:

Ao clicar vamos para essa página:
<br><img src="..\readme-assets\Github authorize.png">

Clique em Autorizar e pronto! O login com autenticação via GitHub (dois fatores) está implementado.
<br><img src="..\readme-assets\Grafana menu.png">

### <a href="\6° Passo - Criando GitHub OAuth app.md" target="_blank">Passo anterior</a>