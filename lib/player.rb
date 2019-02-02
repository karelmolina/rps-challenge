class Player

  attr_reader :player_name

  def initialize(traits)
    @player_name = traits["player_name"]
  end
end
