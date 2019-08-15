require 'rails_helper'

RSpec.describe "periodics/show", type: :view do
  before(:each) do
    @periodic = assign(:periodic, Periodic.create!(
      :name => "Name",
      :description => "MyText",
      :qualis => "Qualis",
      :knowledgement_area => "Knowledgement Area"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Qualis/)
    expect(rendered).to match(/Knowledgement Area/)
  end
end
