#language: pt

@cadastrar_conta
Funcionalidade: Conta - Criar uma conta do usuario cadastrado


Cenario: Acessar site SrBarriga e criar uma conta com usuario cadastrado
  Dado fazer login com dados válidos e clicar em adicionar conta
  Quando dar um nome para a conta
  Então validar se o cadastro da conta foi realizado corretamente