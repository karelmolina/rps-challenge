class Game
  RULES = {
    rock: {rock: "draw", paper: "lose", scissors: "win"},
    paper: {rock: "win", paper: "draw", scissors: "lose"},
    scissors: {rock: "lose", paper: "win", scissors: "draw"}
  }
  attr_reader :player_choice, :computer_choice

  # contructor
  def initialize(traits)
    @player_choice = traits['weapon']
    @computer_choice = traits['computer_choice']
  end


  def resolution
    if RULES[@pplayer_choice][@computer_choice] == "draw"
      return "draw"
    end
    if RULES[@pplayer_choice][@computer_choice] == "win"
      return "win"
    end
    if RULES[@pplayer_choice][@computer_choice] == "lose"
      return "lose"
    end
  end
end
