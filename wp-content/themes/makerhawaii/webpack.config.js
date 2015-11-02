var path = require('path');
var nesting = require('postcss-nesting');
var ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  entry: './js/src/index.js',
  output: {
    filename: './js/bundle.js',
  },
  module: {
    loaders: [
      {
        test: /\.css$/,
        loader: ExtractTextPlugin.extract('css?modules!postcss')
      },
      {
        test: /.js$/,
        exclude: /node_modules/,
        loader: 'babel'
      }
    ]
  },
  postcss: function() {
      return [nesting]
  },
  plugins: [
    new ExtractTextPlugin("../style.css")
  ]
}
