require 'rails_helper'

RSpec.describe "players/new", type: :view do
  before(:each) do
    assign(:player, Player.new(
      first_name: "MyString",
      last_name: "MyString",
      weight: 1,
      height: 1
    ))
  end

  it "renders new player form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input[name=?]", "player[first_name]"

      assert_select "input[name=?]", "player[last_name]"

      assert_select "input[name=?]", "player[weight]"

      assert_select "input[name=?]", "player[height]"
    end
  end
end
