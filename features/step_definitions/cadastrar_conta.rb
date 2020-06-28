# frozen_string_literal: true

Dado('fazer login com dados válidos e clicar em adicionar conta') do
  step('acessar aba login')
  step('preencher dados de email e senha')
  @logar = Logar.new
  @logar.a_conta.click
  @logar.a_adicionar.click
end

Quando('dar um nome para a conta') do
  @add_conta = AddConta.new
  @adicionar_conta_nome = 'Conta Corrente'
  @add_conta.input_nome_conta.set @adicionar_conta_nome
  @add_conta.button_salvar.click
end

Então('validar se o cadastro da conta foi realizado corretamente') do
  @salvar_conta = SalvarConta.new
  expect(@salvar_conta.div_conta_salva.text).to eql 'Conta adicionada com sucesso!'
  print_screen('cadastro_conta')
  expect(@salvar_conta.td_nome_conta[0].text).to eql @adicionar_conta_nome
end
