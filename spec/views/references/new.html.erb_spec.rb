require 'rails_helper'

RSpec.describe "references/new", type: :view do
  before(:each) do
    assign(:reference, Reference.new(
      :title => "MyString",
      :authors => "MyString",
      :description => "MyText"
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
