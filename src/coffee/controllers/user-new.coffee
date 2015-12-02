UserNewController = (
  $location
  $scope
  UserService
) ->

  $scope.user = user = {}

  $scope.submit = ->
    UserService.save user, ->
      $location.path '/users'

module.exports = UserNewController
