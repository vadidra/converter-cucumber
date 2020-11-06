require_relative 'temperature_converter'
require 'cucumber'
require 'test/unit/assertions'

World(Test::Unit::Assertions)

Given(/^I have temperature in Fahrenheit degrees$/) do
  @temp_converter = TemperatureConverter.new
end

Then(/^I convert it to Celsius degrees$/) do |table|
  data = table.hashes
  data.each do |row|
    f1 = row["Fahrenheit"].to_i
    c1 = row["Celcius"].to_i
    assert_equal(c1, @temp_converter.to_celsius(f1))
  end
end
