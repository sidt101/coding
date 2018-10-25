require_relative '../lib/most_common_int'

RSpec.describe 'most common int' do

  describe '#most_common' do
    it 'returns most common ints' do
      expect(most_common_int([1,2,3,3])).to eq(3)
      expect(most_common_int([1,2,3,])).to eq(1)
      expect(most_common_int([1,2,3,6,6,6,7,7])).to eq(6)
    end
  end
end
