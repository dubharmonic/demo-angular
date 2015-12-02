UserEditController = (
  $location
  $scope
  user
) ->

  $scope.user = user

  $scope.submit = ->
    user.$update ->
      $location.path '/users'

  $scope.delete = ->
    user.$delete ->
      $location.path '/users'

UserEditController.resolve =

  user: ($q, $stateParams, UserService) ->
    deferred = $q.defer()
    UserService.get
      userId: $stateParams.userId
    , (user) ->
      deferred.resolve user
    deferred.promise

module.exports = UserEditController
