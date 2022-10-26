require 'rails_helper'

RSpec.describe "players/edit", type: :view do
  let(:player) {
    Player.create!(
      first_name: "MyString",
      last_name: "MyString",
      weight: 1,
      height: 1
    )
  }

  before(:each) do
    assign(:player, player)
  end

  it "renders the edit player form" do
    render

    assert_select "form[action=?][method=?]", player_path(player), "post" do

      assert_select "input[name=?]", "player[first_name]"

      assert_select "input[name=?]", "player[last_name]"

      assert_select "input[name=?]", "player[weight]"

      assert_select "input[name=?]", "player[height]"
    end
  end
end
