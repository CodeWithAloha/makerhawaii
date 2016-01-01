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
var BrowserSyncPlugin  = require('browser-sync-webpack-plugin');
var webpack = require('webpack');

let config = {
  entry: ['./js/src/index.js'],
  output: {
    publicPath: 'http://localhost:8080/',
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
  watch: false,
  vue: {
   postcss: [pimport, lost, fonts, props, nesting, rucksack]
  },
  plugins: [
    new BrowserSyncPlugin({
      proxy: 'http://local.makerhawaii.com',
      port: 3000,
    }, {
      reload: false
    })
  ]
}

module.exports = config;
