# frozen_string_literal: true

# Salvar Conta
class SalvarConta < SitePrism::Page
  element :div_conta_salva, '.alert.alert-success'
  elements :td_nome_conta, '#tabelaContas tbody td'
end
