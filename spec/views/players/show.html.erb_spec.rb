require 'rails_helper'

RSpec.describe "players/show", type: :view do
  before(:each) do
    assign(:player, Player.create!(
      first_name: "First Name",
      last_name: "Last Name",
      weight: 2,
      height: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
