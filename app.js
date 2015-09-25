'use strict';
require('babel/register');

var riot = require('riot'),
    express = require('express'),
    todoRouter = require('./server/todo-router'),
    browserify = require('browserify-middleware'),
    riotify = require('riotify'),
    babelify = require('babelify'),
    app = express()

var paths = [
  __dirname + '/client/js/todo-app.js',
]

browserify.settings({
  transform: ['babelify', 'riotify']
});

//provide browserified versions of all the files in a directory
app.get('/js/app.js', browserify(paths[0]))
app.use('/', todoRouter)
app.use(express.static('client'))
app.listen(3000)
