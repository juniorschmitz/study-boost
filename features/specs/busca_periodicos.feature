# encoding: utf-8
# language:pt

@all_app
@login
Funcionalidade: Acesso restrito
    Como usuário do site
    Gostaria de poder realizar busca por periódicos
    Para poder encontrar periódicos para publicar minhas pesquisas de acordo com o Qualis que desejar
    
Contexto: Usuário está na home page
  Dado que esteja na home page

    @apresentacao_pagina_busca_periodicos
    Cenário: Apresentação da página de busca por periódicos
      Quando acessar a página de busca por periódicos
      Então deve apresentar o formulário de busca com áreas de conhecimento e Qualis
      E deve apresentar as áreas de conhecimento trazidas por padrão
      E deve apresentar o contador de periódicos e quantos estão sendo apresentados

    @busca_periodico_a1_logado
    Cenário: Busca por periódico A1 logado
      Quando clico no botão de direcionamento para o login
      E logo com o usuário "potato@teste.com" e senha "banana"
      Quando acessar a página de busca por periódicos
      E realizo a busca por periódico selecionando a primeira área de conhecimento e o Qualis A1
      Então devem ser apresentados resultados de periódicos existentes

    @busca_periodico_a1_deslogado
    Cenário: Busca por periódico A1 deslogado
      Quando acessar a página de busca por periódicos
      E realizo a busca por periódico selecionando a primeira área de conhecimento e o Qualis A1
      Então devem ser apresentados resultados de periódicos existentes
    
    @busca_periodico_b1_logado
    Cenário: Busca por periódico B1 logado
      Quando clico no botão de direcionamento para o login
      E logo com o usuário "potato@teste.com" e senha "banana"
      Quando acessar a página de busca por periódicos
      E realizo a busca por periódico selecionando a primeira área de conhecimento e o Qualis A1
      Então devem ser apresentados resultados de periódicos existentes

    @busca_periodico_b1_deslogado
    Cenário: Busca por periódico B1 deslogado
      Quando acessar a página de busca por periódicos
      E realizo a busca por periódico selecionando a primeira área de conhecimento e o Qualis A1
      Então devem ser apresentados resultados de periódicos existentes

    @busca_periodicos_mista
    Cenário: Busca por mais de um Qualis e mais de uma Área de Conhecimento
      Quando acessar a página de busca por periódicos
      E selecionar mais de uma área de conhecimento e mais de um Qualis
      Então devem ser apresentados resultados de periódicos existentes

    @busca_periodico_nao_existente
    Cenário: Busca por periódico não existente
      Quando acessar a página de busca por periódicos
      E selecionar uma área de conhecimento que não tenha Qualis registrado
      Então não devem ser apresentados resultados de periódicos existentes
