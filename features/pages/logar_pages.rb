# Logar
class Logar < SitePrism::Page
  element :div_sucesso_cadastro, '.alert.alert-success'
  element :a_conta, '.dropdown-toggle'
  element :a_adicionar, '.dropdown-menu a[href*="/addConta"]'
  element :a_sair, '.nav.navbar-nav a[href*="/logout"]'
end
