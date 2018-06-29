class Game
  attr_reader :player1, :player2, :counter

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @counter = 0
  end

  def attack
    counter.even? ? player2.receive_damage : player1.receive_damage
    @counter += 1
  end
end
