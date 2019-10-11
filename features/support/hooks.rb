Before do
  @home_page = HomePage.new
  @login_page = LoginPage.new


  @user = User.new(:email => 'potato@teste.com', :password => '123456&', :password_confirmation => '123456&')
  @user.save
end

def sc_path
  fin = Random.new
  complement = fin.rand(12345678910).to_s
  name = 'potato_' + complement
  "reports/screenshots/#{name}.png"
end

AfterStep do |scenario|
  sshot = sc_path
  page.save_screenshot(sshot)
  sleep 1
  embed(sshot.gsub('reports/', ''), 'Taqui o print taokei')
end

After do |scenario|
  if scenario.failed?
    sshot = sc_path
    page.save_screenshot(sshot)
    sleep 1
    embed(sshot.gsub('reports/', ''), 'Taqui o print taokei birl falho')
  end
end
