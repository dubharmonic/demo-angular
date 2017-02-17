userService = require './services/users.coffee'

module.exports = ($stateProvider, $urlRouterProvider) ->

  $stateProvider.state 'users',
    cache: false
    url: '/users'
    resolve:
      users: (userService) ->
        userService.query().$promise
    views:
      main:
        controller: require './controllers/users.coffee'
        template: require('../pug/users.pug')()

  $stateProvider.state 'user',
    url: '/users/:id'
    resolve:
      user: ($stateParams, userService) ->
        userService.get
          id: parseInt $stateParams.id
        .$promise
    views:
      main:
        controller: require './controllers/user.coffee'
        template: require('../pug/user.pug')()

  $urlRouterProvider.when '', '/users'

  $urlRouterProvider.otherwise ($injector, $location) ->
    console.log $location.path()
