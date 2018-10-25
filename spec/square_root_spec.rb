require 'square_root'
#require 'spec_helper'

RSpec.describe 'square root' do
  it 'returns the square root' do
    expect(square_root(49)).to eq(7)
    expect(square_root(36)).to eq(6)
  end
end

