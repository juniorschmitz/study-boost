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

# @acessar_pagina_movies_usuario_deslogado
# Cenário: Acessar a página de edição e cadastro de filmes com usuário deslogado
#   Quando acessar a página de edição de filmes diretamenta pela url
#   Então deverá aparecer a tela de login de usuário

# @acessar_pagina_movies_usuario_logado
# Cenário: Acessar a página de edição e cadastro de filmes com usuário logado
#   Quando clicar no botão de login
#   E logar com o usuário potato@teste.com e senha 123456&
#   E acessar a página de edição de filmes diretamenta pela url
#   Então deverá aparecer uma opção de cadastro de novo filme
