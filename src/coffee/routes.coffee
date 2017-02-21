module.exports = ($stateProvider, $urlRouterProvider) ->

  $stateProvider.state 'albums',
    cache: false
    url: '/albums'
    resolve:
      albums: (albumService) ->
        albumService.query().$promise
    views:
      main:
        controller: require './controllers/albums.coffee'
        template: require('../pug/albums.pug')()

  $stateProvider.state 'album',
    url: '/albums/:id'
    resolve:
      album: ($stateParams, albumService) ->
        albumService.get
          id: parseInt $stateParams.id
        .$promise
      formats: ($stateParams, formatService) ->
        formatService.query().$promise
    views:
      main:
        controller: require './controllers/album.coffee'
        template: require('../pug/album.pug')()

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
