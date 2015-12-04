require 'style!css!less!../less/main.less'

angular = require 'angular'

router = require 'coffee!./router.coffee'
userService = require 'coffee!./services/user-service.coffee'

MyApp = angular.module 'MyApp', [
  require 'angular-resource'
  require 'angular-ui-router'
]

MyApp.config router
MyApp.service 'UserService', userService

angular.bootstrap(document, ['MyApp'])
