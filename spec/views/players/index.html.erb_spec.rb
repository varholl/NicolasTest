require 'rails_helper'

RSpec.describe "players/index", type: :view do
  before(:each) do
    assign(:players, [
      Player.create!(
        first_name: "First Name",
        last_name: "Last Name",
        weight: 2,
        height: 3
      ),
      Player.create!(
        first_name: "First Name",
        last_name: "Last Name",
        weight: 2,
        height: 3
      )
    ])
  end

  it "renders a list of players" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
