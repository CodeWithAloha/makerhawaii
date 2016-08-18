'use strict'
var path = require('path');
var nesting = require('postcss-nesting');
var rucksack = require('rucksack-css');
var cssnano = require('cssnano');
var pimport = require('postcss-import');
var props = require('postcss-custom-properties');
var fonts = require('postcss-font-magician');
var lost = require('lost');

var ExtractTextPlugin = require('extract-text-webpack-plugin');
var webpack = require('webpack');

let config = {
  entry: path.resolve('./js/src/index.js'),
  output: {
    publicPath: 'http://local.makerhawaii.com:8080/js/',
    path: path.resolve('./js'),
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      {
        test: /\.png$/,
        loader: 'url',
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
  watch: false,
  vue: {
   postcss: [pimport, lost, fonts, props, nesting, rucksack]
  },
  plugins: []
}

if(process.env.NODE_ENV === 'production') {
  config.output.publicPath = '/wp-content/themes/makerhawaii/js/';
  config.output.path = path.resolve('./js'),
  config.vue.loaders = {
    css: ExtractTextPlugin.extract('css')
  }
  config.plugins.unshift(new ExtractTextPlugin('./style.css'));
  config.plugins.unshift(new webpack.optimize.UglifyJsPlugin());
}

module.exports = config;
