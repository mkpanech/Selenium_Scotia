  @tfsa
Feature: TFSA Calculator Functionality
  Verify that the Scotiabank TFSA Calculator calculates correctly
  using different user data combinations

  Scenario Outline: Calculate TFSA savings for different user profiles
    Given I am on the Scotiabank TFSA Calculator page
    When I enter "<Years>" years for savings term
    And I choose to invest with mixed income and growth
    And I enter starting amount "<StartingAmount>"
    And I enter periodic investment "<PeriodicInvestment>"
    And I select contribution frequency "<Frequency>"
    And I select province "<Province>"
    And I enter annual income "<AnnualIncome>"
    And I click on View Results
    Then I should see a results section displayed

    Examples:
      | Years | StartingAmount | PeriodicInvestment | Frequency | Province | AnnualIncome |
      | 10    | 1000           | 100                | Monthly   | ON       | 50000        |
      | 15    | 5000           | 200                | Monthly   | BC       | 75000        |
      | 20    | 7000           | 300                | Weekly    | AB       | 60000       |
      | 30   | 8500           | 400                | Weekly    | MB       | 80000       |
      | 20    | 4000           | 200                | Annually   | ON    | 70000       |
      | 12   | 6000           | 350                | Weekly    | BC   | 90000       |
      | 18  | 8000           | 500                | Weekly    | AB       | 65000       |
      | 29   | 7500           | 350                | Monthly   | ON     | 60000       |