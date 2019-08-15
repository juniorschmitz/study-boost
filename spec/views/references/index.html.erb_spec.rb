require 'rails_helper'

RSpec.describe "references/index", type: :view do
  before(:each) do
    assign(:references, [
      Reference.create!(
        :title => "Title",
        :authors => "Authors",
        :description => "MyText"
      ),
      Reference.create!(
        :title => "Title",
        :authors => "Authors",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of references" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Authors".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
