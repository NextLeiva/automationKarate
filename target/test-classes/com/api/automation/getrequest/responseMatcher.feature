Feature: To test the get end point of the application

  Background: Setup the base path
    Given url 'http://localhost:9897'

  Scenario: To get the data in Json format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method 200
    And print response

  Scenario: To get the data in XML format
    Given path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method 200
    And print response