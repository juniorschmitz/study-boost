require "rails_helper"

RSpec.describe PeriodicsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/periodics").to route_to("periodics#index")
    end

    it "routes to #new" do
      expect(:get => "/periodics/new").to route_to("periodics#new")
    end

    it "routes to #show" do
      expect(:get => "/periodics/1").to route_to("periodics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/periodics/1/edit").to route_to("periodics#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/periodics").to route_to("periodics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/periodics/1").to route_to("periodics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/periodics/1").to route_to("periodics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/periodics/1").to route_to("periodics#destroy", :id => "1")
    end
  end
end
