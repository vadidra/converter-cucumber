Feature: Many values

  @many
  Scenario: Many values

    Given I have temperature in Fahrenheit degrees
    Then I convert it to Celsius degrees

      | Fahrenheit   | Celcius |
      |           32 |       0 |
      |           50 |      10 |