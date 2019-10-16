# encoding: utf-8
# language:pt

@all_app
@login
Funcionalidade: Login e cadastro no site

Contexto: Usuário está na home page
  Dado que esteja na home page

@login_ok
Cenário: Realizar login ok
  Quando clico no botão de direcionamento para o login
  E logo com o usuário "potato@teste.com" e senha "123456&"
  Então deve aparecer um botão para deslogar na home

@login_nok
Cenário: Realizar login nok 
  Quando clico no botão de direcionamento para o login
  E logo com o usuário "potato@teste.com" e senha "banana"
  Então deve aparecer um botão para deslogar na home
