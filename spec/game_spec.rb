require 'game'

describe Game do
  let(:henry) { double :player }
  let(:hoover) { double :player }
  subject(:game) { Game.new(henry, hoover) }
  describe '#attack' do
    it 'calls receive_damage on the other player' do
      expect(hoover).to receive(:receive_damage)
      game.attack
    end
  end
end
