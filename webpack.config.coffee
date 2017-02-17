path = require 'path'
HtmlWebpackPlugin = require 'html-webpack-plugin'

module.exports =
  entry: './src/coffee/app.coffee'
  output:
    filename: "app-#{Date.now()}.js"
    path: path.resolve __dirname, 'public'
  module:
    loaders: [
        test: /\.coffee$/
        loader: 'coffee-loader'
      ,
        test: /\.pug$/
        loader: 'pug-loader'
      ,
        test: /\.svg$/
        loader: 'file-loader'
      ,
        test: /\.json$/
        loader: 'json-loader'
      ,
        test: /\.css$/
        loader: 'style-loader!css-loader'
      ,
        test: /\.ttf$/
        loader: 'file-loader'
      ,
        test: /\.eot$/
        loader: 'file-loader'
      ,
        test: /\.woff$/
        loader: 'file-loader'
      ,
        test: /\.woff2$/
        loader: 'file-loader'
    ]
  plugins: [
    new HtmlWebpackPlugin(
      filename: 'index.html'
      template: './src/pug/index.pug'
    )
  ]
