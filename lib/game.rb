class Game
  attr_reader :player1, :player2, :counter
  def attack
    amount = rand(10..30)
    if counter.even?
      player2.receive_damage(amount)
    else
      player1.receive_damage(amount)
    end
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
