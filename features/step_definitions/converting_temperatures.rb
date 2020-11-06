Given('I have temperature converter and {int} temperatures in Fahrenheit degrees') do |int|
  step 'I have temperature converter'
  step 'I have {int} temperatures in Fahrenheit degrees'
end

Then('I should get {int} temperatures in Celsius degrees') do |int|
  pending # Write code here that turns the phrase above into concrete actions
end