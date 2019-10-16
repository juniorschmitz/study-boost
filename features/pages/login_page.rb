class LoginPage < BasePage
  def login(email, password)
    page.find('#user_email').fill_in with: email
    page.find('#user_password').fill_in with: password
    find('.btn.btn-lg.btn-primary.btn-block').click
  end
end
