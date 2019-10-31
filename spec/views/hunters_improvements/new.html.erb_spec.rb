require 'rails_helper'

RSpec.describe "hunters_improvements/new", type: :view do
  before(:each) do
    assign(:hunters_improvement, HuntersImprovement.new())
  end

  it "renders new hunters_improvement form" do
    render

    assert_select "form[action=?][method=?]", hunters_improvements_path, "post" do
    end
  end
end
