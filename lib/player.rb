# saves all the player information
class Player
  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 60
  end

  def receive_damage
    @hitpoints -= 10
  end
end
