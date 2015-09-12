'use strict';

var express = require('express')
  , todorouter = express()
  , riot = require('riot')
  , todoComponent = require('../components/todo-app.tag')
  , cons = require('consolidate')

// set .html as the default extension
todorouter.set('view engine', 'html')

// assign the swig engine to .html files
todorouter.engine('html', cons.swig)

todorouter.set('views', __dirname + '/views')

todorouter.get('/', function(req, res) {
  var component = riot.render(todoComponent, { title: 'My Osom title'} )
  res.render('layouts/main', {component: component})
});

module.exports = todorouter

  
