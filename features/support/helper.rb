# Helper module
module Helper
  def print_screen(nome_arquivo)
    path = 'report/screenshots/'
    photo = "#{path}/#{nome_arquivo}.png"
    page.save_screenshot(photo)
    embed(photo, 'image/png')
  end
end
