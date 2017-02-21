module.exports = ($resource) ->

  $resource 'http://localhost:8081/albums/:id',
    id: '@id'
  ,
    update:
      method: 'PUT'
