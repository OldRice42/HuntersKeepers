require "rails_helper"

RSpec.describe HuntersImprovementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/hunters_improvements").to route_to("hunters_improvements#index")
    end

    it "routes to #new" do
      expect(:get => "/hunters_improvements/new").to route_to("hunters_improvements#new")
    end

    it "routes to #show" do
      expect(:get => "/hunters_improvements/1").to route_to("hunters_improvements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hunters_improvements/1/edit").to route_to("hunters_improvements#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/hunters_improvements").to route_to("hunters_improvements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hunters_improvements/1").to route_to("hunters_improvements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hunters_improvements/1").to route_to("hunters_improvements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hunters_improvements/1").to route_to("hunters_improvements#destroy", :id => "1")
    end
  end
end
