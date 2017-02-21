module.exports = ($scope, $state, album, formats) ->

  if album.release
    album.release = new Date album.release


  $scope.album = album
  $scope.formats = formats

  $scope.saveAlbum = ->
    album.$update()
    $state.go 'albums'
