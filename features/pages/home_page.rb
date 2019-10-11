class HomePage < BasePage
  def access_login_page
    page.find(:css, 'a.nav-link[href="/users/sign_in"]').click
  end
end
