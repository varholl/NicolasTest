require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'Suite Test for Player' do
    it 'should have a first name and last name' do
      @player = Player.new(
        first_name: 'John',
        last_name:  'Doe',
        weight:     90,
        height:     181
      )
      expect(@player).to be_valid
    end

    it 'should have a last name' do
      @player = Player.new(
        first_name: 'John',
        last_name:  'Doe',
        weight:     -1,
        height:     -2
      )
      expect(@player).to_not be_valid
    end

    describe 'validators' do
      it {should validate_numericality_of(:height).is_greater_than(-1)}
      it {should validate_numericality_of(:weight).is_greater_than(-1)}
      it {should validate_presence_of(:first_name)}
      it {should validate_presence_of(:last_name)}
    end
  end
end