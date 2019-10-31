require 'rails_helper'

RSpec.describe "improvements/show", type: :view do
  before(:each) do
    @improvement = assign(:improvement, Improvement.create!(
      :description => "Description",
      :type => "Type",
      :move_id => 2,
      :rating => 3,
      :stat_limit => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
