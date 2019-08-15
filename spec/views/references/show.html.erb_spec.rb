require 'rails_helper'

RSpec.describe "references/show", type: :view do
  before(:each) do
    @reference = assign(:reference, Reference.create!(
      :title => "Title",
      :authors => "Authors",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Authors/)
    expect(rendered).to match(/MyText/)
  end
end
