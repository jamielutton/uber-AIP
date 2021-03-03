class Journey
  MINIMUM_FARE = 5

  attr_reader :pick_up_point, :drop_off_point

  def fare
    MINIMUM_FARE
  end

  def set_pick_up_point(point)
    @drop_off_point = point
  end

  def set_drop_off_point(point)
    @drop_off_point = point
  end
end