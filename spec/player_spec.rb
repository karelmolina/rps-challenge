require 'player'

describe Player do

  subject(:gamer) { Player.new(options) }
  let(:options) { { "name" => "karel" } }

  describe 'player name' do
    it 'return players name' do
      expect(gamer.name).to eq "karel"
    end
  end

end
