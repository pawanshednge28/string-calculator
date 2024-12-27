require_relative '../string_calculator'

RSpec.describe '#add' do
  it 'returns 0 for an empty string' do
    expect(add("")).to eq(0)
  end

  it 'returns the number itself for a single number' do
    expect(add("1")).to eq(1)
  end

  it 'returns the sum for two numbers' do
    expect(add("1,2")).to eq(3)
  end

  it 'returns the sum for multiple numbers' do
    expect(add("1,2,3,4")).to eq(10)
  end

  it 'handles newlines as delimiters' do
    expect(add("1\n2,3")).to eq(6)
  end

  it 'raises an exception for negative numbers' do
    expect { add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
  end

  it 'raises an exception with all negative numbers listed' do
    expect { add("1,-2,-3,4") }.to raise_error("negative numbers not allowed -2,-3")
  end
end
