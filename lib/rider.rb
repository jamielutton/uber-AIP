class Rider
  attr_reader :journey, :name, :phone_number, :driver

  def initialize(journey, name, phone_number)
    @journey = journey
    @name = name
    @phone_number = phone_number
  end

  def start_journey(driver, pick_up_point)
    @journey.set_pick_up_point(pick_up_point)
    @driver = driver
  end

  def end_journey(drop_off_point)
    @journey.set_drop_off_point(drop_off_point)

    amount = @journey.fare
    @driver.pay(amount)
  end
end