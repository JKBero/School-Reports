require 'reports'

describe '.report()' do

  it 'returns 1 green when given a green' do
    expect(report('g')).to eq "Green: 1"
  end

  it 'returns 1 amber when given an amber' do
    expect(report('a')).to eq "Amber: 1"
  end

  it 'returns 1 red when given a red' do
    expect(report('r')).to eq "Red: 1"
  end
end
