class Rider
  attr_reader :journey, :name, :phone_number, :driver, :card_number

  def initialize(journey, name, phone_number, card_number)
    @journey = journey
    @name = name
    @phone_number = phone_number
    @card_number = card_number
  end

  def start_journey(driver, pick_up_point)
    @journey.set_pick_up_point(pick_up_point)
    @driver = driver
  end

  def end_journey(drop_off_point)
    if @journey.pick_up_point == drop_off_point
      raise "Pick up and drop off points are the same"
    end
    
    @journey.set_drop_off_point(drop_off_point)  

    amount = @journey.fare
    @driver.pay(amount)
  end

  def cancel_journey
    @driver.pay_cancellation_fee
  end
end