#language: pt

@novo_usuario
Funcionalidade: Cadastrar Usuario


Esquema do Cenário: Acessar site SrBarriga e escolher um produto e realizar uma cadastrar um usuário
  Dado acessar o site na sessão cadastro
  Quando inserir dados "<tipo>"
  Então validar cadastro "<tipo>" do usuário

  Exemplos:
    | tipo     |
    | positivo |
    | negativo |