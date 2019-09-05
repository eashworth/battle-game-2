require 'player'

describe Player do
subject(:henry) { described_class.new('Henry') }
  it 'returns its name' do
    expect(subject.name).to eq('Henry')
  end
end
