class Driver
  DEFAULT_TO_PAY = 0

  attr_reader :total_to_pay, :name, :registration_number

  def initialize(name, registration_number)
    @total_to_pay = 10
    @name = "name"
    @registration_number = registration_number
  end

  def pay(amount)
    @total_to_pay += amount
  end
end