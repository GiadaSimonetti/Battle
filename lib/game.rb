class Game

  # attr_reader :hit_points

  def initialize(player = Player.new)
    @player = player
    # @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end
