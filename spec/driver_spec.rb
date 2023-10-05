require 'driver'

describe Driver do
  let(:driver) { Driver.new("Sam Driver", "ABC1234") }

  describe 'on initialize' do
    it 'sets name and registration_number' do
      expect(driver.name).to eq "Sam Driver"
      expect(driver.registration_number).to eq "ABC1234"
    end

    it 'total_to_pay is set to the default value' do
      expect(driver.total_to_pay).to eq Driver::DEFAULT_TO_PAY
    end
  end

  describe 'pay method' do
    it 'adds amount to total_to_pay' do
      driver.pay(15)
      expect(driver.total_to_pay).to eq 25
    end
  end

  describe 'pay_cancellation_fee method' do
    it 'pays driver cancellation fee' do
      driver.pay_cancellation_fee
      expect(driver.total_to_pay).to eq 15
    end
  end
end