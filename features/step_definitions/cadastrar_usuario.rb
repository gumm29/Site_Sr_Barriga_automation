Dado('acessar o site na sessão cadastro') do
  @cad_usuario = CadUsuario.new
  @cad_usuario.load
end

Quando('inserir dados {string}') do |tipo|
  @cad_usuario.input_nome.set 'Gustavo Munis de Moraes'
  @email_cadastrado = "gustavomor#{rand(100)}@yaman.com.br"
  @cad_usuario.input_email.set @email_cadastrado
  @senha_cadastrada = '123456'
  @cad_usuario.input_senha.set @senha_cadastrada
  @cad_usuario.button_cadastrar.click

  if tipo.eql?('negativo')
    @novo_usuario = Login.new
    @novo_usuario.a_novo_usuario.click
    @cad_usuario.input_nome.set 'Gustavo Munis de Moraes'
    @cad_usuario.input_email.set @email_cadastrado
    @cad_usuario.input_senha.set @senha_cadastrada
    @cad_usuario.button_cadastrar.click
  end
end

Então('validar cadastro {string} do usuário') do |tipo|
  @cadastro_usuario = NovoUsuario.new
  if tipo.eql?('positivo')
    expect(@cadastro_usuario.div_sucesso_cadastro.text).to eql 'Usuário inserido com sucesso'
    print_screen('usuario_cadastrado')
  else
    expect(@cadastro_usuario.div_falhado_cadastro.text).to eql 'Endereço de email já utilizado'
    print_screen('usuario_existente')
  end
end
