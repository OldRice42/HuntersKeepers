require 'rails_helper'

RSpec.describe "improvements/new", type: :view do
  before(:each) do
    assign(:improvement, Improvement.new(
      :description => "MyString",
      :type => "",
      :move_id => 1,
      :rating => 1,
      :stat_limit => 1
    ))
  end

  it "renders new improvement form" do
    render

    assert_select "form[action=?][method=?]", improvements_path, "post" do

      assert_select "input[name=?]", "improvement[description]"

      assert_select "input[name=?]", "improvement[type]"

      assert_select "input[name=?]", "improvement[move_id]"

      assert_select "input[name=?]", "improvement[rating]"

      assert_select "input[name=?]", "improvement[stat_limit]"
    end
  end
end
