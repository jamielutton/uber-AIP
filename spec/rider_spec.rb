require 'rider'
require 'driver'
require 'journey'

describe Rider do
  let(:journey) { double(:journey)}
  let(:driver) { double(:driver)}
  let(:rider) { Rider.new(journey, "Sam Rider", "07777777777", "1234567890") }

  describe 'on initialize' do
    it 'sets name, phone_number and card_number' do
      expect(rider.name).to eq "Sam Rider"
      expect(rider.phone_number).to eq "07777777777"
      expect(rider.card_number).to eq "1234567890"
    end
  end

  describe 'start_journey method' do
    it 'sets the journey pick_up_point' do
      allow(journey).to receive(:set_pick_up_point)
      rider.start_journey(driver, "Buckley Building")
      expect(journey).to have_received(:set_pick_up_point).with("Buckley Building")
    end

    it 'sets the driver' do
      allow(journey).to receive(:set_pick_up_point)
      rider.start_journey(driver, "Buckley Building")
      expect(rider.driver).to eq driver
    end
  end

  describe 'end_journey method' do
    before do 
      allow(driver).to receive(:pay)
      allow(journey).to receive(:set_pick_up_point)
      allow(journey).to receive(:set_drop_off_point)
      allow(journey).to receive(:fare).and_return 5
      allow(journey).to receive(:pick_up_point).and_return "Buckley Building"
    end

    it 'sets the journey drop_off_point' do
      rider.start_journey(driver, "Buckley Building")
      rider.end_journey("1 New St")
      expect(journey).to have_received(:set_drop_off_point).with("1 New St")
    end

    it 'pays the driver the correct fare' do
      rider.start_journey(driver, "Buckley Building")
      rider.end_journey("1 New St")
      expect(driver).to have_received(:pay).with(5)
    end

    it 'if pick up and drop off points are the same an exception is thrown' do
      rider.start_journey(driver, "Buckley Building")
      expect { rider.end_journey("Buckley Building") }.to raise_exception "Pick up and drop off points are the same"
    end
  end

  describe "cancel_journey method" do
    before do 
      allow(journey).to receive(:set_pick_up_point)
      allow(driver).to receive(:pay_cancellation_fee)
    end
    
    it "Pays driver cancellation fee" do
      rider.start_journey(driver, "Buckley Building")
      rider.cancel_journey
      expect(driver).to have_received(:pay_cancellation_fee)
    end
  end
end