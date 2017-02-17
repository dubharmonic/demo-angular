module.exports = ($scope, $state, user) ->

  $scope.user = user

  $scope.saveUser = ->
    user.$update()
    $state.go 'users'
