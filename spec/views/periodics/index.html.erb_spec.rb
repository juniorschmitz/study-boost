require 'rails_helper'

RSpec.describe "periodics/index", type: :view do
  before(:each) do
    assign(:periodics, [
      Periodic.create!(
        :name => "Name",
        :description => "MyText",
        :qualis => "Qualis",
        :knowledgement_area => "Knowledgement Area"
      ),
      Periodic.create!(
        :name => "Name",
        :description => "MyText",
        :qualis => "Qualis",
        :knowledgement_area => "Knowledgement Area"
      )
    ])
  end

  it "renders a list of periodics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Qualis".to_s, :count => 2
    assert_select "tr>td", :text => "Knowledgement Area".to_s, :count => 2
  end
end
