'use strict'
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

let config = {
  entry: ['./js/src/index.js'],
  output: {
    publicPath: 'http://local.makerhawaii.com:8080/wp-content/themes/makerhawaii',
    filename: './js/bundle.js'
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
  watch: true,
  vue: {
   postcss: [pimport, fonts, scale, props, nesting, rucksack]
  },
}

module.exports = config;
