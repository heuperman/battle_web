class Game
  attr_reader :player1, :player2

  def attack(player)
    player.receive_damage
  end

end
