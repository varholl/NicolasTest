require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'Suite Test for Player' do
    before(:all) do
      @player = Player.new(
        first_name: 'John',
        last_name:  'Doe',
        weight:     90,
        height:     181
      )
    end
    
    it 'should have a first name and last name' do
      expect(@player).to be_valid
    end

    it 'should have a last name' do
      expect(Player.new).to_not be_valid
    end

    it 'should have a weight greater tha 0' do
      expect(@player.weight). to be > 0
    end

    it 'should have a height greater tha 0' do
      expect(@player.height). to be > 0
    end
  end
end