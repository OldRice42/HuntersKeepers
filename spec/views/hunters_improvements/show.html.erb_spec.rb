require 'rails_helper'

RSpec.describe "hunters_improvements/show", type: :view do
  before(:each) do
    @hunters_improvement = assign(:hunters_improvement, HuntersImprovement.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
