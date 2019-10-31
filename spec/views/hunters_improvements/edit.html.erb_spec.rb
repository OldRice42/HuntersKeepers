require 'rails_helper'

RSpec.describe "hunters_improvements/edit", type: :view do
  before(:each) do
    @hunters_improvement = assign(:hunters_improvement, HuntersImprovement.create!())
  end

  it "renders the edit hunters_improvement form" do
    render

    assert_select "form[action=?][method=?]", hunters_improvement_path(@hunters_improvement), "post" do
    end
  end
end
