require 'rails_helper'

RSpec.describe "hunters_improvements/index", type: :view do
  before(:each) do
    assign(:hunters_improvements, [
      HuntersImprovement.create!(),
      HuntersImprovement.create!()
    ])
  end

  it "renders a list of hunters_improvements" do
    render
  end
end
