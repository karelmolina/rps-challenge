require "game"

describe Game do

  subject(:game) { Game.new(options) }
  let(:options) { { "weapon" => "rock", "computer_choice" => "scissors" } }
  describe "player choice" do
    it "returns player choice" do
      expect(game.player_choice).to eq "rock"
    end
  end

  describe "computer choice" do
    it "returns the random computer choice" do
      expect(game.computer_choice).to eq "scissors"
    end
  end

  describe "End game" do
    context 'posibles ends' do
      let(:lose_game) { { "weapon" => "rock", "computer_choice" => "paper" } }
      let(:draw_game) { { "weapon" => "paper", "computer_choice" => "paper" } }
      subject(:win) { game }
      subject(:draw) { Game.new(draw_game) }
      subject(:lose) { Game.new(lose_game) }

      describe "player win" do
        it "return win if rock beat scissors" do
          expect(win.resolution).to eq "You have win"
        end
      end

      describe "player lose" do
        it "return lose if rock is beat by paper" do
          expect(lose.resolution).to eq "You lose!"
        end
      end

      describe "game is a draw" do
        it "return draw if the weapon are the same" do
          expect(draw.resolution).to eq "Its a draw"
        end
      end

    end
  end
end
