'use strict'

angular.module('angularfullstackApp')
.controller('ContactCtrl', ($scope, $http) ->
  $scope.contact = {}
  $scope.errors = {}

  $scope.send = (form) ->
    $scope.submitted = true

    if form.$valid
      console.log $scope.contact.name
      console.log $scope.contact.email
      console.log $scope.contact.message

      # Send data
      $http.post('/api/contacts',
        name: $scope.contact.name
        email: $scope.contact.email
        message: $scope.contact.message
      ).success (resp) ->
        if resp.status is 201
          $scope.contact.name = ''
          $scope.contact.email = ''
          $scope.message = ''
          console.log "200"
        else
          console.log "err"

)