Dado('acessar aba login') do
  step('acessar o site na sessão cadastro')
  step('inserir dados "positivo"')
  @form_login = Login.new
  @form_login.load
end

Quando('preencher dados de email e senha') do
  @form_login.input_email.set @email_cadastrado
  @form_login.input_senha.set @senha_cadastrada
  @form_login.button_entrar.click
end

Então('validar login com sucesso') do
  @login = Logar.new
  expect(@login.div_sucesso_cadastro.text).to eql 'Bem vindo, Gustavo Munis de Moraes!'
  print_screen('login_sucesso')
  @login.a_sair.click
end

