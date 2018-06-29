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

  describe '#receive_damage' do
    it "reduces the player's hitpoints by 10" do
      expect { player.receive_damage(10) }.to change { player.hitpoints }.by(-10)
    end
  end
end
