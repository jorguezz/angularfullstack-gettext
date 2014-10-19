'use strict'

angular.module('angularfullstackApp').factory('Languaje', (gettextCatalog) ->
  langs = [
    code: "en"
    name: 'EN'
  ,
    code: "es"
    name: 'ES'
  ]

  currentLang = langs[0]
  gettextCatalog.setCurrentLanguage(currentLang.code)

  getLangs: ->
    langs

  getCurrentLang: ->
    currentLang

  setCurrentLang: (lang) ->
    currentLang = lang

  changeLang: (lang) ->
    console.log lang
    @setCurrentLang(lang)
    console.log currentLang
    gettextCatalog.setCurrentLanguage(lang.code)
    return
)