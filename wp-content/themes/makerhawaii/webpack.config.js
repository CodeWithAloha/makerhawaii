var path = require('path');
var nesting = require('postcss-nesting');
var rucksack = require('rucksack-css');
var cssnano = require('cssnano');
var pimport = require('postcss-import');
var props = require('postcss-custom-properties');
var fonts = require('postcss-font-magician');
var neat = require('postcss-neat');
var scale = require('postcss-modular-scale');

var ExtractTextPlugin = require('extract-text-webpack-plugin');
var BrowserSyncPlugin  = require('browser-sync-webpack-plugin');
var webpack = require('webpack');

module.exports = {
  entry: './js/src/index.js',
  output: {
    filename: './js/bundle.js',
  },
  module: {
    loaders: [
      {
        test: /\.png$/,
        loader: 'url',
      },
      {
       test: /\.css$/,
       loader: ExtractTextPlugin.extract('css?modules!postcss')
      },
      {
        test: /\.json$/,
        loader: 'json'
      },
      {
        test: /\.vue$/,
        loader: 'vue'
      },
      {
        test: /.js$/,
        exclude: /node_modules/,
        loader: 'babel'
      }
    ]
  },
  vue: {
   postcss: [fonts, scale, props, nesting, rucksack]
  },
  postcss: function(webpack) {
    [pimport({
      addDependencyTo: webpack
    }), fonts, scale, props, nesting, rucksack]
  },
  plugins: [
    // new webpack.optimize.UglifyJsPlugin(),
    new ExtractTextPlugin('../style.css'),
    new BrowserSyncPlugin( {
      host: 'localhost',
      port: 3003,
      proxy: 'http://local.makerhawaii.com',
      files: ['style.css', 'views/*.twig', 'js/src/*.js']
    })
  ]
}
