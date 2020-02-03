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

  it 'returns multiple greens when given multiple greens' do
    expect(report('g, g')).to eq "Green: 2"
    expect(report('g, g, g, g, g')).to eq "Green: 5"
  end

  it 'returns multiple ambers when given multiple ambers' do
    expect(report('a, a')).to eq "Amber: 2"
    expect(report('a, a, a, a')).to eq "Amber: 4"
  end

  it 'returns multiple reds when given multiple reds' do
    expect(report('r, r')).to eq "Red: 2"
    expect(report('r, r, r, r, r, r')).to eq "Red: 6"
  end

  it 'returns 1 green and 1 amber when passed this' do
    expect(report('g, a')).to eq "Green: 1\nAmber: 1"
  end

  it 'returns 1 amber and 1 red when passed this' do
    expect(report('a, r')).to eq "Amber: 1\nRed: 1"
  end
end
