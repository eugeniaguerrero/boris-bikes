require 'van'

describe Van do

  it { is_expected.to respond_to :release_bike }
  
  describe '#load' do
    it 'van loads a bike' do
    bmx = double :bike
    expect(subject.load(bmx)).to eq [bmx]
    end
  end

end
