Dado("que esteja na home page") do
  visit root_path
end

Quando("clico no botão de direcionamento para o login") do
  @home_page.access_login_page
  sleep 12
end

E("logo com o usuário {string} e senha {string}") do |email, password|
  @login_page.login(email, password)
end

Então("deve aparecer um botão para deslogar na home") do
  expect(@home_page).to have_css 'a.nav-link[href="/users/sign_out"]'
end

Então("não deve aparecer um botão para deslogar na home") do
  expect(@home_page).not_to have_css 'a.nav-link[href="/users/sign_out"]'
end
