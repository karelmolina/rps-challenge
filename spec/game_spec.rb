require "game"

describe Game do

  subject(:game) { Game.new(options) }
  let(:options) { {"weapon" => "rock", "computer_choice" => "scissors"} }
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
      subject(:win) { game }
      subject(:draw) { Game.new(draw_option) }
      subject(:lose) {Game.new(lose_option) }

      let(:lose_option) { { "weapon" => "rock", "computer_choice" => "paper" } }
      let(:draw_option) { { "weapon" => "paper", "computer_choice" => "paper" } }

      it "player win" do
        expect(win.resolution).to eq "win"
      end

      it "player lose" do
        expect(lose.resolution).to eq "lose"
      end

      it "game is a draw" do
        expect(draw.resolution).to eq "draw"
      end
    end
  end
end
