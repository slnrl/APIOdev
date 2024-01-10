Feature: Search Movie By Name

  Background:
    * url baseUrl
    * def api_key = 'apikey=87ceaa28'
    * def filmName = 'Harry Potter'

  Scenario: get film id
    Given url baseUrl
    And params ({apikey: '87ceaa28', s: 'Harry Potter'})
    When method get
    * print response
    * def filmId = response.Search[1].imdbID
    * print filmId

    Then status 200
