require 'player'

describe Player do
  subject(:henry) { described_class.new('Henry') }
  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq('Henry')
    end
  end
  describe '#hp' do
    it 'returns its health points' do
      expect(subject.hp).to eq 100
    end
  end
  describe '#receive_damage' do
    it 'reduces hp by 10' do
      expect { subject.receive_damage }.to change { subject.hp }.by -10
    end
  end
end
