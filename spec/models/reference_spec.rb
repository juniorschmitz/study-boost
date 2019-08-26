require 'rails_helper'

RSpec.describe Reference, type: :model do
  reference = described_class.new

  it "is valid with valid attributes" do
    reference.title = "Teste"
    reference.authors = "Autor"
    reference.description = 'Lorem ipsum lalalalalalalalla'
    reference.publication_date = Date.today() - 7
    reference.registered_date = Date.today()
    reference.user = User.new
    expect(reference).to be_valid
  end
  
  it "is invalid without user" do
    reference.title = "Teste"
    reference.authors = "Autor"
    reference.description = 'Lorem ipsum lalalalalalalalla'
    reference.publication_date = Date.today() - 7
    reference.registered_date = Date.today()
    reference.user = nil
    expect(reference).to_not be_valid
  end

  it "is invalid without title" do
    reference.authors = "Autor"
    reference.title = nil
    reference.description = 'Lorem ipsum lalalalalalalalla'
    reference.publication_date = Date.today() - 7
    reference.registered_date = Date.today()
    reference.user = User.new
    expect(reference).to_not be_valid
  end

  it "is invalid without authors" do
    reference.title = "Teste"
    reference.authors = nil
    reference.description = 'Lorem ipsum lalalalalalalalla'
    reference.publication_date = Date.today() - 7
    reference.registered_date = Date.today()
    reference.user = User.new
    expect(reference).to_not be_valid
  end

  it "is invalid without description" do
    reference.title = "Teste"
    reference.authors = "Autor"
    reference.description = nil
    reference.publication_date = Date.today() - 7
    reference.registered_date = Date.today()
    reference.user = User.new
    expect(reference).to_not be_valid
  end

  it "is invalid without publication date" do
    reference.title = "Teste"
    reference.authors = "Autor"
    reference.description = 'Lorem ipsum lalalalalalalalla'
    reference.publication_date = nil
    reference.registered_date = Date.today()
    reference.user = User.new
    expect(reference).to_not be_valid
  end

  it "is invalid without registered date" do
    reference.title = "Teste"
    reference.authors = "Autor"
    reference.description = 'Lorem ipsum lalalalalalalalla'
    reference.publication_date = Date.today() - 7
    reference.registered_date = nil
    reference.user = User.new
    expect(reference).to_not be_valid
  end
end
