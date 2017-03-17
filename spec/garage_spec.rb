require 'garage'
require 'van'

describe Garage do

  describe '#collect' do
    it 'collects the bikes from a van' do
      bmx = Bike.new
      van = Van.new
      van.load(bmx)
      expect(subject.collect(van)).to eq [bmx]
  end
end

end
