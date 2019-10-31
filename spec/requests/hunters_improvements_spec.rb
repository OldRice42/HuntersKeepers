require 'rails_helper'

RSpec.describe "HuntersImprovements", type: :request do
  describe "GET /hunters_improvements" do
    it "works! (now write some real specs)" do
      get hunters_improvements_path
      expect(response).to have_http_status(200)
    end
  end
end
