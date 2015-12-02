UserService = ($resource) ->

  $resource 'http://localhost:9002/users/:userId',
    userId: '@id'
  ,
    update:
      method: 'PUT'

module.exports = UserService
