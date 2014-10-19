'use strict'

angular.module 'angularfullstackApp'
.config ($stateProvider) ->
  $stateProvider.state 'contact',
    url: '/contact'
    templateUrl: 'app/contact/contact.html'
    controller: 'ContactCtrl'
