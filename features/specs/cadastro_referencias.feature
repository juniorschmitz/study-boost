# encoding: utf-8
# language:pt

@all_app
@login
Funcionalidade: Cadastro de referências bibliográficas
    Como pesquisador
    Gostaria de poder adicionar referências que utilizo em minha pesquisa na base de dados
    Para poder guiar melhor minhas pesquisas
    
Contexto: Usuário está na home page
  Dado que esteja na home page

  @cadastro_referencia_ok
  Cenário: Cadastro de referências bibliográficas ok
    Quando clico no botão de direcionamento para o login
    E logo com o usuário "potato@teste.com" e senha "banana"
    Quando acessar a página de adição de referências diretamente pela url
    E acessar o cadastro de nova referência
    E cadastrar uma nova referência corretamente
    Então a referência deve ser cadastrada corretamente

  @cadastro_referencia_dados_faltando
  Cenário: Cadastro de referências bibliográficas nok
    Quando clico no botão de direcionamento para o login
    E logo com o usuário "potato@teste.com" e senha "banana"
    Quando acessar a página de adição de referências diretamente pela url
    E cadastrar uma nova referência com dados faltando
    Então a referência não deve ser cadastrada corretamente
