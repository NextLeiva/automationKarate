Feature: To create the job entry in the application
  Use POST /normal/webapi/add to create job entry in the application

  Background: Create and Initialize base url
    Given url 'http://localhost:9897'

  Scenario: to create the job entry in json format

    Given path '/normal/webapi/add'
    And request
      """
      {
      "jobId":5,
      "jobTitle":"sof malo",
      "jobDescription":"To develop andriod application",
      "experience":[
         "Google",
         "Apple",
         "Mobile Iron"
      ],
      "project":[
         {
            "projectName":"Movie App",
            "technology":[
               "Kotlin",
               "SQL Lite",
               "Appium"
            ]
         }
      ]
   }
      """
    And headers {Accept : 'application/json' , Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.jobTitle == "sof malo"

  Scenario: To create the job entry in json format

    Given path '/normal/webapi/add'
    * def body = read("com/api/postrequestData/jobEntry.json")
    And request body
    And headers {Accept : 'application/json' , Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.jobTitle == "sof malo"