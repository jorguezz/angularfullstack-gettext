'use strict'

angular.module 'angularfullstackApp'
.controller 'NavbarCtrl', ($scope, $location, Auth, Languaje) ->
  $scope.menu = [
    title: 'Home'
    link: '/'
  ,
    title: 'Contacto'
    link: '/contact'
  ]
  $scope.isCollapsed = true
  $scope.isLoggedIn = Auth.isLoggedIn
  $scope.isAdmin = Auth.isAdmin
  $scope.getCurrentUser = Auth.getCurrentUser

  $scope.logout = ->
    Auth.logout()
    $location.path '/login'

  $scope.isActive = (route) ->
    route is $location.path()