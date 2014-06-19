Feature: Reading from the DOM

  Background:
    When I view "sample.html"

  Scenario: Reading a flat element
    When I read the "h1" I should see "hello world"

  Scenario: Reading a flat element with a transformer
    When I read the "h1" with an all caps tranformer I should see "HELLO WORLD"

  Scenario: Reading a nested element
    When I find the "doge" element within ".wow" I should see "many money"

  Scenario: Using the find based constructor
    When I eager find the "space9" element I should see "wormhole"

  Scenario: Is Present
    When I see if "doge" is present within ".wow" I should get "true"

  Scenario: Is Not Present
    When I see if "dogey" is present within ".wow" I should get "false"

  Scenario: When I search by text
    Given I search for "many money" I should get "many money"

  Scenario: Is Visible
    When I see if ".wow" is visible I should get "true"

  Scenario: Is Not Visible
    When I see if ".hidden" is visible I should get "false"
