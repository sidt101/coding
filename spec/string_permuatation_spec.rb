require 'string_permutation'
RSpec.describe StringPermutation do
  subject { StringPermutation.new }

  it 'returns true for valid permutations' do
    expect(subject.valid?('str', 'srt')).to be true
    expect(subject.valid?('hhhhoooooo', 'oooooohhhh')).to be true
  end

  it 'returns false for invalid permutations' do
    expect(subject.valid?('str', 'strt')).to be false
    expect(subject.valid?('str', 'art')).to be false
    expect(subject.valid?('xox', 'oxo')).to be false
    expect(subject.valid?('hello son', 'sonhello')).to be false
  end
end
