Feature: Check Stock product
    As a seller
    I want to check product

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Terraria" with price 315.00 and stock of 20 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then "Bread" should have 3 in stock

Scenario: Buy one product in table
    When I buy <product> with quantity <quantity>
    Then <product> should have <stock> in stock
    Examples:
       | product    | quantity |  stock |
       | "Bread"    |     1    |   4    |
       | "Jam"      |     2    |   8    |
       | "Terraria" |     3    |  17    |