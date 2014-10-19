'use strict'

angular.module 'angularfullstackApp'
.config ($stateProvider) ->
  $stateProvider.state 'todos',
    url: '/todos'
    templateUrl: 'app/todos/todos.html'
    controller: 'TodosCtrl'
