# Login
class Login < SitePrism::Page
  set_url 'https://srbarriga.herokuapp.com/login'

  element :input_email, '#email'
  element :input_senha, '#senha'
  element :button_entrar, '.btn.btn-primary'
  element :a_novo_usuario, '.nav.navbar-nav a[href*="/cadastro"]'
end
