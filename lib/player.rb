class Player

  attr_reader :name

  def initialize(traits)
    @name = traits['name']
  end
end
