Feature: To validate the GET end point
  To validate the get end point response

  Background: Setup the base path
    Given url 'http://localhost:9897'

  Scenario: To get the data in Json format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response.[0].jobId == 1
    And match response.[0].experience[1] == 'Apple'
    And match response.[0].project[0].projectName == 'Movie App'
    And match response.[0].project[0].technology[2] == 'Gradle'
    #validate the size of array
    And match response.[0].experience == '#[3]'
    And match response.[0].project[0].technology == '#[3]'
    #using wild card char
    And match response.[0].experience[*] == ["Google","Apple","Mobile Iron"]
    And match response.[0].project[0].technology[*] == ["Kotlin","SQL Lite","Gradle"]
    #usin contains keywoard
    And match response.[0].experience[*] contains ["Google","Apple","Mobile Iron"]
    And match response.[0].project[0].technology[*] contains ["Kotlin","SQL Lite","Gradle"]


  Scenario: To get the data in Json format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response.[0].jobId == '#present'
    And match response.[0].experience[1] == '#notnull'
    And match response.[0].project[0].projectName == '#ignore'
    And match response.[0].project[0].technology == '#array'
    And match response.[0].jobTitle == '#string'
    And match response.[0].jobId == '#number'
