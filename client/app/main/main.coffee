'use strict'

angular.module 'angularfullstackApp'
.config ($stateProvider) ->
  $stateProvider.state 'main',
    url: '/'
    templateUrl: 'app/main/main.html'
    controller: 'MainCtrl'
