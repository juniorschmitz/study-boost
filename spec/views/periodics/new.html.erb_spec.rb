require 'rails_helper'

RSpec.describe "periodics/new", type: :view do
  before(:each) do
    assign(:periodic, Periodic.new(
      :name => "Revista Brasileira de Computação",
      :description => "Blablabla, blablabla",
      :qualis => "B2",
      :knowledgement_area => "Computação",
      :issn => "1234-1234"
    ))
  end

  it "renders new periodic form" do
    render

    assert_select "form[action=?][method=?]", periodics_path, "post" do

      assert_select "input[name=?]", "periodic[name]"

      assert_select "textarea[name=?]", "periodic[description]"

      assert_select "input[name=?]", "periodic[qualis]"

      assert_select "input[name=?]", "periodic[knowledgement_area]"
    end
  end
end
