class Game
  RULES = {
    rock: { scissors: :win, paper: :lose, rock: :draw },
    scissors: { paper: :win, rock: :lose, scissors: :draw },
    paper: { rock: :win, scissors: :lose, paper: :draw }
  }
  attr_reader :player_choice, :computer_choice, :player_sym_choice, :computer_sym_choice

  # contructor
  def initialize(traits)
    @player_choice = traits['weapon']
    @computer_choice = traits['computer_choice']
  end

  def makesymbols(player_choice,computer_choice)
    @player_sym_choice = player_choice.to_sym
    @computer_sym_choice = computer_choice.to_sym
  end

  def resolution
    makesymbols(@player_choice, @computer_choice)
    result = RULES[@pplayer_sym_choice][@computer_sym_choice]
    if result == :draw
      return "draw"
    end
    if result == :win
      return "win"
    end
    if result == :lose
      return "lose"
    end
  end


end
