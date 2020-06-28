# frozen_string_literal: true

# Cadastro Usuario
class CadUsuario < SitePrism::Page
  set_url 'https://srbarriga.herokuapp.com/cadastro'

  element :input_nome, '#nome'
  element :input_email, '#email'
  element :input_senha, '#senha'
  element :button_cadastrar, '.btn.btn-primary'
end
