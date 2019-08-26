require 'rails_helper'

RSpec.describe "periodics/show", type: :view do
  before(:each) do
    @periodic = assign(:periodic, Periodic.create!(
      :name => "Revista Brasileira de Computação",
      :description => "Blablabla, blablabla",
      :qualis => "B2",
      :knowledgement_area => "Computação",
      :issn => "1234-1234"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Descrição/)
    expect(rendered).to match(/Qualis/)
    expect(rendered).to match(/Área de conhecimento/)
  end
end
