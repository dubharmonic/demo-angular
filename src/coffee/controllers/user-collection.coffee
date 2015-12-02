UserCollectionController = (
  $scope
  users
) ->

  $scope.users = users

UserCollectionController.resolve =

  users: ($q, UserService) ->
    deferred = $q.defer()
    UserService.query (users) ->
      deferred.resolve users
    deferred.promise

module.exports = UserCollectionController
