class Game

  attr_reader :player_chooise, :computer_choise

  #contructor
  def initialize (traits)
    @player_chooise = traits['weapon']
    @computer_choise = traits['computer_choise']
  end
end
