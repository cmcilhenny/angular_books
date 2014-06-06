BookServices = angular.module("BookServices", [])

BookServices.factory("Books", ["$resource", ($resource) ->
  $resource("/books/:id.json", {id: "@id"}, {update: {method: "PUT"}})
])