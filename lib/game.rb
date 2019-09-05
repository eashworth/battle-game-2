class Game
  attr_reader :player_1, :player_2, :aggressor, :victim
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @aggressor = player_1
    @victim = player_2
  end

  def attack
    victim.receive_damage
    @victim, @aggressor = @aggressor, @victim
  end

end
