BookController = angular.module("BookController", [])

BookController.controller("BookDetailsCtrl", ["$scope", "$http", "$routeParams", ($scope, $http, $routeParams) ->
  $scope.book_id = $routeParams.id

  $http.get("/books/#{$scope.book_id}.json").success((data) -> $scope.book = data)

])

# Define Controller
BookController.controller("BooksCtrl", ["$scope", "$http", "Books", ($scope, $http, Books) ->

  $scope.books = []

  Books.query (data)->
    console.log("GOT BOOKS!")
    $scope.books = data
  # $http.get("/books.json").success (data)->
  #   $scope.books = data

  $scope.addBook = ->
    console.log $scope.newBook
    $http.post("/books.json", $scope.newBook).success (data)->
      console.log "BOOK SAVED!"
      $scope.newBook = {}
      $scope.books.push(data)

  $scope.deleteBook = ->
    console.log @book
    $http.delete("/books/#{@book.id}.json").success (data)=>
      console.log "book deleted"
      $scope.books.splice(@$index,1)

])
