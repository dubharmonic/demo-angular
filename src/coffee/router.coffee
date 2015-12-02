userCollectionController = require 'coffee!./controllers/user-collection.coffee'
userEditController = require 'coffee!./controllers/user-edit.coffee'
userNewController = require 'coffee!./controllers/user-new.coffee'

userCollectionTemplate = require('jade!../jade/templates/user-collection.jade')()
userEditTemplate = require('jade!../jade/templates/user-edit.jade')()

router = ($stateProvider, $urlRouterProvider) ->

  $stateProvider.state 'User Collection',
    url: '/users'
    resolve: userCollectionController.resolve
    views:
      main:
        controller: userCollectionController
        template: userCollectionTemplate

  $stateProvider.state 'User Edit',
    url: '/users/:userId/edit'
    resolve: userEditController.resolve
    views:
      main:
        controller: userEditController
        template: userEditTemplate

  $stateProvider.state 'User New',
    url: '/users/new'
    views:
      main:
        controller: userNewController
        template: userEditTemplate

  $urlRouterProvider.otherwise ($injector, $location) ->
    console.log $location.path()

module.exports = router
