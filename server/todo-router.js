'use strict';

import express from 'express'
import riot from 'riot'
import todoComponent from '../components/todo-app.tag'
import cons from 'consolidate'

const TodoRouter = express()

// set .html as the default extension
TodoRouter.set('view engine', 'html')

// assign the swig engine to .html files
TodoRouter.engine('html', cons.swig)

TodoRouter.set('views', __dirname + '/views')

TodoRouter.get('/', function(req, res) {
  var title = 'My OSOM title'
  var component = riot.render(todoComponent, { title: title} )
  res.render('layouts/main', {component: component, title: title})
});

export default TodoRouter

  
