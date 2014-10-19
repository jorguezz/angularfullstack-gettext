'use strict'

angular.module('angularfullstackApp')
.controller 'TodosCtrl', ($scope, $http) ->
  $scope.todos = []

  $http.get('/api/todos')
  .success (todos) ->
    $scope.todos = todos

  $scope.addTodo = ->
    return if $scope.todo is ''
    $http.post('/api/todos',
      name: $scope.todo
    ).success (todo) ->
      $scope.todos.push(todo)

    $scope.todo = ''

  $scope.updateTodo = (_id, index) ->
    return if $scope.todo is ''
    $http.put('/api/todos/'+ _id,
      name: $scope.todo
    )
    ###.success (todo) ->
      $scope.todos.push(todo)
    ###
    #$scope.todo = ''

  $scope.removeTodo = (_id, index) ->
    return if not _id
    $http.delete('/api/todos/' + _id)
    .success((res)->
      if res.status is 200
        $scope.todos.splice(index, 1)
    )