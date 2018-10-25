require 'pair_sum'

RSpec.describe 'pair sum' do

  describe '#pair_sum' do
    it 'returns most common ints' do
      expect(pair_sum([1,2,3,6,7], 3)).to eq([1,2])
      expect(pair_sum([1,2,3,6,7], 13)).to eq([6,7])
      expect(pair_sum([1,2,3,6,7], 14)).to eq([])
    end
  end
end
