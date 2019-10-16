# encoding: utf-8
# language:pt

@all_app
@login
Funcionalidade: Acesso restrito
    Como administrador do site
    Quero que os usuários só possam acessar páginas restritas estando logados
    Para garantir a segurança e o correto funcionamento das funcionalidades
    
Contexto: Usuário está na home page
  Dado que esteja na home page

  @acessar_cadastro_referencias_logado
  Cenário: Acessar a página de adição de referências bibliográficas sem estar logado
    Quando acessar a página de adição de referências diretamente pela url
    Então deve aparecer a tela de login do usuário

  @acessar_cadastro_referencias_deslogado
  Cenário: Acessar a página de adição de referências bibliográficas estando logado
    Quando clico no botão de direcionamento para o login
    E logo com o usuário "potato@teste.com" e senha "banana"
    E acessar a página de edição de referências diretamente pela url
    Então deve apresentar o formulário de cadastro de referências bibliográficas

