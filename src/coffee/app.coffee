require '../../node_modules/bootstrap/dist/css/bootstrap.min.css'
require '../../node_modules/bootstrap/dist/css/bootstrap-theme.min.css'

angular = require 'angular'

app = angular.module 'app', [
  require 'angular-resource'
  require 'angular-ui-router'
]

app.config require './routes.coffee'

app.service 'albumService', require './services/albums.coffee'
app.service 'formatService', require './services/formats.coffee'
app.service 'userService', require './services/users.coffee'

angular.bootstrap document, ['app']
