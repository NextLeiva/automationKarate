Feature: To test the get end point of the application

  Background: Setup the base path
    Given url 'http://localhost:9897'

  Scenario: To get the data in Json format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    #create a variable to store the data from external file
  * def actualResponse = read("com/api/automation/JsonResponse.json")
    And match response == actualResponse
    And print "File ==>", actualResponse
