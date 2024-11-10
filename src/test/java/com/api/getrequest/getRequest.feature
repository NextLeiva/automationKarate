Feature: To test the get end point of the application

  Background: Setup the base path
    Given url 'http://localhost:9897'
    And print '========= This is Background keyword========='

  Scenario: Consultar la data de la aplicacion
    Given path '/normal/webapi/all'
    When method get
    Then status 200

  Scenario: Consultar toda la informacion usando path
    And path '/normal/webapi/all'
    When method get
    Then status 200

  Scenario: Consultar la data de la aplicacion en formato xml usando variable path
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200

#  Scenario: To get all the data from application in JSON format
#    Given url 'http://localhost:9897/normal/webapi/all'
#    When method get
#    Then status 200
#
#    #vamos a trabajar con BAse path + Context path
#  Scenario: To get all the data from application in JSON format using path variable
#    Given url 'http://localhost:9897'
#    And path '/normal/webapi/all'
#    When method get
#    Then status 200
