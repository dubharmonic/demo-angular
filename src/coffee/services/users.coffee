module.exports = ($resource) ->

  $resource 'http://localhost:9002/users/:id',
    id: '@id'
  ,
    update:
      method: 'PUT'
