'use strict'

describe 'Controller: TodosCtrl', ->

  # load the controller's module
  beforeEach module 'angularfullstackApp'
  TodosCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach(inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TodosCtrl = $controller 'TodosCtrl',
      $scope: scope
  )

  it('todos debería de estar vacío al empezar', ->
    expect(scope.todos.length).toBe(0)

  it('debería añadir un item a la lista', ->
    scope.todo = 'Test 1'
    scope.addTodo()
    expect(scope.todos.length).toBe(1)
  )

  it('deberia añadir y eliminar el item de la lista', ->
    scope.todo = 'Test 1'
    scope.addTodo()
    scope.removeTodo(0)
    expect(scope.todos.length).toBe(0)
  )
