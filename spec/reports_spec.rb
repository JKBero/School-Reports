require 'reports'

describe '.report()' do

  it 'returns 1 green when given a green' do
    expect(report('g')).to eq "Green: 1"
  end

end
