Feature: Listar usuarios de negocio

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'
    * def body = { name: 'morpheus', job: 'leader' }

  @CrearUsuario
  Scenario: Crear un usuario
    Given path 'api', 'users'
    And header Content-Type = 'application/json'
    And request body
    When method post
    Then status 201
    And match response.name == 'morpheus'
    And match response.job == 'leader'
    And match response.id == '#string'
    And match response.createdAt == '#string'
  @ObtenerUsuario
  Scenario: Obtener usuarios
    Given path 'api', 'users'
    And param page = 2
    When method get
    Then status 200