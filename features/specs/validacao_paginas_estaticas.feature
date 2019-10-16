# encoding: utf-8
# language:pt

@all_app
@login
Funcionalidade: Acesso restrito
    Como administrador do site
    Gostaria que existissem páginas estáticas com informações pertinentes à aplicação
    Para poder auxiliar com informações
    
Contexto: Usuário está na home page
  Dado que esteja na home page

  @acessar_pagina_informacoes
  Cenário: Acessar página de informações sobre a aplicação
    Quando clico no menu para acessar a página com informações sobre a aplicação
    Então deve apresentar informações sobre a aplicação
    E deve exibir as perguntas frequentes
