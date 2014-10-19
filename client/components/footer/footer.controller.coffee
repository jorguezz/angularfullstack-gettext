'use strict'

angular.module('angularfullstackApp')
.controller('FooterCtrl', ($scope, Languaje) ->

  $scope.langs = Languaje.getLangs()
  $scope.selectedItem = Languaje.getCurrentLang()

  $scope.changeLang = (lang) ->
    Languaje.changeLang(lang)
)