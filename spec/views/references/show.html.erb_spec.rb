require 'rails_helper'

RSpec.describe "references/show", type: :view do
  before(:each) do
    @user = FactoryBot.create(:user)
    sign_in @user

    @reference = assign(:reference, Reference.create!(
      :title => "Title",
      :authors => "Authors",
      :description => "MyText",
      :publication_date => Date.today() - 7,
      :registered_date => Date.today(),
      :user => @user
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Authors/)
    expect(rendered).to match(/MyText/)
  end
end
