require 'rails_helper'

RSpec.describe Periodic, type: :model do
  periodic = described_class.new

  it "is valid with valid attributes" do
    periodic.name = "Teste"
    periodic.qualis = "A"
    periodic.issn = '1234-1234'
    periodic.knowledgement_area = "Computer Science"
    expect(periodic).to be_valid
  end

  it "is not valid without name" do
    periodic.name = ""
    periodic.qualis = "A"
    periodic.issn = '1234-1234'
    periodic.knowledgement_area = "Computer Science"
    expect(periodic).to_not be_valid
  end

  it "is not valid without issn" do
    periodic.name = "Teste"
    periodic.qualis = "Teste"
    periodic.issn = ''
    periodic.knowledgement_area = "Computer Science"
    expect(periodic).to_not be_valid
  end

  it "is not valid without qualis" do
    periodic.name = "Teste"
    periodic.qualis = ""
    periodic.issn = '1234-1234'
    periodic.knowledgement_area = "Computer Science"
    expect(periodic).to_not be_valid
  end
  
  it "is not valid without knowledgement_area" do
    periodic.name = "Teste"
    periodic.qualis = "A"
    periodic.issn = '1234-1234'
    periodic.knowledgement_area = ""
    expect(periodic).to_not be_valid
  end
end
