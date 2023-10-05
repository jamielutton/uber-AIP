class Driver
  DEFAULT_TO_PAY = 10

  attr_reader :total_to_pay, :name, :registration_number

  def initialize(name, registration_number)
    @total_to_pay = Driver::DEFAULT_TO_PAY
    @name = name
    @registration_number = registration_number
  end

  def pay(amount)
    @total_to_pay += amount
  end
end