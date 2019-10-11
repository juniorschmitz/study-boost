class LoginPage < BasePage
  def login(email, password)
    # find('#user_email').set email
    # find('#user_password').set password
    page.find('#user_email').fill_in with: email
    page.find('#user_password').fill_in with: password
    find('.btn.btn-lg.btn-primary.btn-block').click
  end
end
