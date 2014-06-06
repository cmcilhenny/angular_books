BookApp = angular.module("BookApp", [
  "ngRoute",
  "ngResource",
  "BookRouter",
  "BookController",
  "BookServices",
  "BookDirectives"
])

BookApp.config(["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])