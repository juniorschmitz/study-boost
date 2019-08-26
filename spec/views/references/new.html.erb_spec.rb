require 'rails_helper'

RSpec.describe "references/new", type: :view do
  before(:each) do
    @user = FactoryBot.create(:user)
    sign_in @user

    assign(:reference, Reference.new(
      :title => "MyString",
      :authors => "MyString",
      :description => "MyText",
      :publication_date => Date.today() - 7,
      :registered_date => Date.today(),
      :user => @user
    ))
  end

  it "renders new reference form" do
    render

    assert_select "form[action=?][method=?]", references_path, "post" do

      assert_select "input[name=?]", "reference[title]"

      assert_select "input[name=?]", "reference[authors]"

      assert_select "textarea[name=?]", "reference[description]"
    end
  end
end
