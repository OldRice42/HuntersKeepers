require 'rails_helper'

RSpec.describe "improvements/index", type: :view do
  before(:each) do
    assign(:improvements, [
      Improvement.create!(
        :description => "Description",
        :type => "Type",
        :move_id => 2,
        :rating => 3,
        :stat_limit => 4
      ),
      Improvement.create!(
        :description => "Description",
        :type => "Type",
        :move_id => 2,
        :rating => 3,
        :stat_limit => 4
      )
    ])
  end

  it "renders a list of improvements" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
