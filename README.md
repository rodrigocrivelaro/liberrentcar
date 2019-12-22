# liberrentcar
Projeto de estudo de uma locadora de automóveis utilizando Ruby On Rails e banco PostgreSQL

Para visualizar o sistema funcionando é necessário ter instalado:
- Ruby versão 2.5.5 ou superior;
- Rails versão 6 ou superior;
- Banco de dados PostgreSQL com usuário e senha configurados;
- Um navegador para internet;
- Git instalado e configurado;

O sistema é independente de sistema operacional, rodando tanto em Linux quanto em Windows ou MAC;

Tendo a estrutura informada no computador, fazer o download do projeto ou a clonagem via git para um diretório de sua preferência e, dependendo de qual foi a forma escolhida para baixar, descompacte e acesse o diretório do projeto via prompt de comando e rode os comandos na sequência abaixo indicada:
rake db:create db:migrate db:seed 
bundle install 
rake assets:clean && rake assets:precompile 
rails s

Após executar os comandos acima, acesse pelo seu navegador de preferência o link http://localhost:3000/admin cadastre um login e senha e entre no sistema;
