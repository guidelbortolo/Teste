Dado("que acesso a pagina de cadasto") do
    visit 'https://www.americanas.com.br'
    find(:xpath, '//*[@id="h_usr-link"]/span[2]').click()
    find(:xpath, '//*[@id="h_user"]/span[2]/div/a[2]').click()

  end
  
  Dado("possuo seguinte dados") do |table|
    @cad = table.rows_hash
  end
  
  Quando("realizo meu cadastro") do
    fill_in 'email-input', with: @cad['E-mail']
    fill_in 'password-input', with: @cad['Senha']
    fill_in 'cpf-input', with: @cad['CPF']
    fill_in 'name-input', with: @cad['Nome']
    fill_in 'birthday-input', with: @cad['Data nascimento']
    find(:xpath, '//*[@id="gender"]/div[1]/label').click()
    fill_in 'phone-input', with: @cad['Telfone']
    find(:xpath, '//*[@id="root"]/div/div[2]/form/button').click()
  end
  
  Então("sou direcionado para pagina principal e realizo processo de compra") do
    expect(page).to have_xpath('//*[@id="brd-link"]')
    find(:xpath, '//*[@id="h_search-input"]').click()
    find(:xpath, '//*[@id="h_search-input"]').send_keys('smart tv led 40"')
    find(:xpath, '//*[@id="h_search-input"]').native.send_keys(:enter)
    find(:xpath, '//*[@id="content-middle"]/div[5]/div/div/div/div[1]/div[1]/div/div[2]/a/section/div[2]/div[1]/h1').click()
    find(:xpath, '//*[@id="btn-buy"]').click()
    find_by_id('btn-continue').click()
    find_by_id('cep').send_keys('04524-030')
    find(:xpath, '//*[@id="app"]/section/section/div[1]/div[2]/div/button').click()
    find_by_id('buy-button').click()
    find(:xpath, '//*[@id="edit-cep"]').send_keys('04524-030')
    find(:xpath, '//*[@id="edit-number"]').send_keys('2234')
    find(:xpath, '//*[@id="edit-reference"]').send_keys('teste')
    find(:xpath, '//*[@id="editAddress"]/div[3]/div[2]/button').click()
    find(:xpath, '//*[@id="payment-option-menu-BANK_SLIP"]/a/span[2]').click();
    find_by_id('bank-slip-submit').click()
    find(:xpath, '//*[@id="ng-app"]/body/section/article/what-happens-now/section/div[2]/div/div[1]/div[3]/a').click()
  end


  Então("devo visualizar mesagem de alerta {string}") do |mensagem_ob_email|
    expect(page).to have_content(mensagem_ob_email)
  end

  Então("devo visualizar mesagem de alerta para senha {string}") do |mensagem_senha|
    expect(page).to have_content(mensagem_senha)
  end

  Então("devo visualizar mesagem de alerta para CPF {string}") do |mensagem_CPF|
    expect(page).to have_content(mensagem_CPF)
  end

  Então("devo visualizar mesagem de alerta para nome {string}") do |mensagem_nome|
    expect(page).to have_content(mensagem_nome)
  end

  Então("devo visualizar mesagem de alerta para data de nascimento {string}") do |mensagem_dt|
    expect(page).to have_content(mensagem_dt)
  end

  Dado("possuo seguinte dados sem seleção campo sexo") do |table|
    @cad2 = table.rows_hash
  end
  
  Quando("realizo meu cadastro sem seleção campo sexo") do
    fill_in 'email-input', with: @cad2['E-mail']
    fill_in 'password-input', with: @cad2['Senha']
    fill_in 'cpf-input', with: @cad2['CPF']
    fill_in 'name-input', with: @cad2['Nome']
    fill_in 'birthday-input', with: @cad2['Data nascimento']
    fill_in 'phone-input', with: @cad2['Telfone']
    find(:xpath, '//*[@id="root"]/div/div[2]/form/button').click()
  end

  Então("devo visualizar mesagem de alerta para sexo {string}") do |mensagem_sexo|
    expect(page).to have_content(mensagem_sexo)
  end

  Então("devo visualizar mesagem de alerta para telefone {string}") do |mensagem_tel|
    expect(page).to have_content(mensagem_tel)
  end