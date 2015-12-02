path = require 'path'

module.exports =
  entry: 'coffee!./src/coffee/app.coffee'
  output:
    filename: 'bundle.js'
    path: path.resolve __dirname, 'public'
