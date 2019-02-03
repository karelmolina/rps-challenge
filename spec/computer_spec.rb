require "computer"

describe Computer do

  subject(:computer) { Computer.new }

  describe "set random weapon" do
    it "random select a weapon" do
      expect(Computer::OPTION).to include computer.weapon
    end
  end
end
