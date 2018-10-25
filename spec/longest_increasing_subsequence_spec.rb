require 'longest_increasing_subsequence'
RSpec.describe LongestIncreasingSubsequence do
  subject { LongestIncreasingSubsequence.new }

  xit 'returns the LIS' do
    # expect(subject.length_of_lis([1,2])).to eq(2)
    # expect(subject.length_of_lis([10,9,2,5,3,7,101,18])).to eq(4)
    expect(subject.length_of_lis([1,3,6,7,9,4,10,5,6])).to eq(6)
  end
end
