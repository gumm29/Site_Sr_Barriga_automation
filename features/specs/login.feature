#language: pt

@login_usuario
Funcionalidade: Login - fazer login

Cenario: Acessar site SrBarriga e fazer login
  Dado acessar aba login
  Quando preencher dados de email e senha
  Então validar login com sucesso