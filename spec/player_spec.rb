require 'player'

describe Player do

  subject(:player) { described_class.new("Giada") }

  describe "#name" do
    it "returns player name" do
      expect(player.name).to eq "Giada"
    end
  end
end
