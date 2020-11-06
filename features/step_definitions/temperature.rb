require_relative 'temperature_converter'
require 'cucumber'
require 'test/unit/assertions'

World(Test::Unit::Assertions)

Given('a temperature converter') do
  @temp_converter = TemperatureConverter.new
end

Given('the temperature is 32 degrees in Fahrenheit') do
  @to_c_from_f_32 = @temp_converter.to_celsius( 32)
end

Then('the temperature is 0 degrees in Celsius') do
  assert_equal(0.0, @to_c_from_f_32)
end

