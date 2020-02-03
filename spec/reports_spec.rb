require 'reports'

describe '.report()' do

  it 'returns 1 green when given a green' do
    expect(report('Green')).to eq "Green: 1"
  end

  it 'returns 1 amber when given an amber' do
    expect(report('Amber')).to eq "Amber: 1"
  end

  it 'returns 1 red when given a red' do
    expect(report('Red')).to eq "Red: 1"
  end

  it 'returns multiple greens when given multiple greens' do
    expect(report('Green, Green')).to eq "Green: 2"
    expect(report('Green, Green, Green, Green, Green')).to eq "Green: 5"
  end

  it 'returns multiple ambers when given multiple ambers' do
    expect(report('Amber, Amber')).to eq "Amber: 2"
    expect(report('Amber, Amber, Amber, Amber')).to eq "Amber: 4"
  end

  it 'returns multiple reds when given multiple reds' do
    expect(report('Red, Red')).to eq "Red: 2"
    expect(report('Red, Red, Red, Red, Red, Red')).to eq "Red: 6"
  end

  it 'returns 1 green and 1 amber when passed this' do
    expect(report('Green, Amber')).to eq "Green: 1\nAmber: 1"
  end

  it 'returns 1 amber and 1 red when passed this' do
    expect(report('Amber, Red')).to eq "Amber: 1\nRed: 1"
  end
end
