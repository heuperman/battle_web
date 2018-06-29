class Game
  attr_reader :player1, :player2, :counter
  def attack
    counter.even? ? player2.receive_damage : player1.receive_damage
    @counter += 1
  end

  def self.set_session(player1, player2)
    @session = Game.new(player1, player2)
  end

  def self.session
    @session
  end

  private

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @counter = 0
  end
end
