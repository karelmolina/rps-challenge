class Player

  attr_reader :name

  def initialize(trait)
    @name = trait["player_name"]
  end
end
