#!/usr/bin/env node

var budo = require('budo');
var hotModuleReloading = require('browserify-hmr');
var coffeeify = require('coffeeify');

budo('./main.js', {
  serve: 'bundle.js',
  live: true,
  port: 8000,
  stream: process.stdout,
  browserify: {
    transform: coffeeify,
    plugin: hotModuleReloading
  }
})
