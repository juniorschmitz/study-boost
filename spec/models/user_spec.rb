require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid data' do
    user = described_class.new
    user.email = 'teste@teste.com'
    user.password = 'password'
    user.password_confirmation = 'password'
    expect(user).to be_valid
  end

  it 'is invalid with different password confirmation' do
    user = described_class.new
    user.email = 'teste2@teste.com'
    user.password = 'password'
    user.password_confirmation = 'passwordadsaca'
    expect(user).to_not be_valid
  end

  it 'is invalid with invalid email' do
    user = described_class.new
    user.email = 'teste3'
    user.password = 'password'
    user.password_confirmation = 'password'
    expect(user).to_not be_valid
  end
end
