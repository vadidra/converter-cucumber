class TemperatureConverter

  def to_celsius(temp_f)
    (temp_f - 32) / 1.8
  end

  def to_fahrenheit(temp_c)
    temp_c * 1.8 + 32
  end

end