require 'player'

describe Player do
  let(:name) { double :name }
  let(:player2) { double :player2 }
  subject(:player) { described_class.new(name) }

  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq name
    end
  end

  describe '#attack' do
    it 'calls the method receive_damage on the attacked player' do
      expect(player2).to receive(:receive_damage)
      player.attack(player2)
    end
  end

  describe '#receive_damage' do
    it "reduces the player's hitpoints by 10" do
      expect { player.receive_damage }.to change { player.hitpoints }.by(-10)
    end
  end
end
