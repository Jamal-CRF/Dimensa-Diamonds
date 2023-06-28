
require_relative '../dimensa_diamonds'


RSpec.describe DiamondMiner do
  describe '#mine' do
    it 'returns the correct number of diamonds' do
      miner = DiamondMiner.new('<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>')
      expect(miner.mine).to eq(11)
    end
  end
end