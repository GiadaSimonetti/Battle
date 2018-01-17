require 'player'

describe Player do

  subject(:player_1) { described_class.new("Giada") }
  subject(:player_2) { described_class.new("Tom") }

  describe "#name" do
    it "returns player name" do
      expect(player_1.name).to eq "Giada"
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#attack" do
    it "damages the player" do
      expect(player_2).to receive(:receive_damage)
      player_1.attack(player_2)
    end
  end

  describe "#receive_damage" do
    it "Shows HP after the attack" do
      expect{ player_1.receive_damage }.to change {player_1.hit_points}.by(-10)
    end
  end
end
