require 'rails_helper'

RSpec.describe "Periodics", type: :request do
  describe "GET /periodics" do
    it "works! (now write some real specs)" do
      get periodics_path
      expect(response).to have_http_status(200)
    end
  end
end
