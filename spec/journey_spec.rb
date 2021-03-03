require 'journey'

describe Journey do
  let(:journey) { Journey.new }

  describe 'fare method' do
    it 'charges a minimum fare' do
      expect(journey.fare).to eq Journey::MINIMUM_FARE
    end
  end

  describe 'set_pick_up_point method' do
    it 'sets pick_up_point' do
      journey.set_pick_up_point("Buckley Building")
      expect(journey.pick_up_point).to eq "Buckley Building"
    end
  end

  describe 'set_drop_off_point method' do
    it 'sets drop_off_point' do
      journey.set_drop_off_point("1 New st")
      expect(journey.drop_off_point).to eq "1 New st"
    end
  end
end