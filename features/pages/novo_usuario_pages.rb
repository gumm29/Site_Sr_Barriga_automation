# frozen_string_literal: true

# Novo Usuario
class NovoUsuario < SitePrism::Page
  element :div_sucesso_cadastro, '.alert.alert-success'
  element :div_falhado_cadastro, '.alert.alert-danger'
end
