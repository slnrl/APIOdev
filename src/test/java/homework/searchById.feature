Feature: Search Movie By ID

  Background:
    * url baseUrl
    * def get = call read('classpath:homework/searchByName.feature')
    * print get
    * def ID = get.filmId
    * print ID

    Scenario: get film name
      Given url baseUrl
      And params ({apikey: '87ceaa28', i: ID})
      When method get
      * print response
      * def filmTitle = response.Title
      * print filmTitle
      * match filmTitle == "Harry Potter and the Sorcerer's Stone"
      * match response.Year != null
      * match response.Released != null
      Then status 200