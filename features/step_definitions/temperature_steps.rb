require_relative 'temperature_converter'
require 'cucumber'
require 'test/unit/assertions'

World(Test::Unit::Assertions)

Given('I have temperature converter and the temperature is 122 Fahrenheit degrees') do
  step 'I have temperature converter'
  step 'The temperature is 122 Fahrenheit degrees'
end

Given('I have temperature converter') do
  @temp_converter = TemperatureConverter.new
end

Given('The temperature is 122 Fahrenheit degrees') do
  @to_c_from_f_122 = @temp_converter.to_celsius( 122)
end

Then('the converted temperature is 50 Celsius degrees') do
  assert_equal(50.0, @to_c_from_f_122)
end