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
    it 'switches victim' do
      allow(hoover).to receive(:receive_damage)
      game.attack
      expect(game.victim).to eq henry
    end
    it 'switches aggressor' do
      allow(hoover).to receive(:receive_damage)
      game.attack
      expect(game.aggressor).to eq hoover
    end
  end
end
