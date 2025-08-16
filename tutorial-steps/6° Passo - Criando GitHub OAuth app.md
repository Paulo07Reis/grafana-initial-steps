## 6° Passo: Criando GitHub OAuth app

Acesse o link para desenvolvedores do GitHub: https://github/settings/developers e clique em “New OAuth App”.
<br><img src="..\readme-assets\GIT pt1.png">

Você será direcionado para a página de criação do app:
<br><img src="..\readme-assets\GIT pt2.png">
Preencha os campos conforme abaixo:
- Homepage URL: coloque o link de acesso ao Grafana, por exemplo: Ex: http://ip_publico:3000
- Authorization callback URL: coloque o IP público da sua EC2 seguido de /login/github, por exemplo:  http://ip_publico/login/github

Clique em “Register application” para criar o OAuth App.

Pronto! O OAuth App foi criado.
<br><img src="..\readme-assets\GIT pt3.png">
Salve Client ID e Client Secret para usar na configuração do Grafana.

### <a href="\5° Passo - Executando o arquivo .sh e acessando o Grafana.md" target="_blank">Passo anterior</a>
### <a href="\7° Passo: .md" target="_blank">Próximo passo</a>