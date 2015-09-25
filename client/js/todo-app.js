'use strict';

// Globals

import TodoStore from '../../stores/todo_store.js'
window.TodoStore = TodoStore

// Riot
import riot from 'riot'
import task from '../../components/todo-item.tag'
import taskForm from '../../components/todo-form.tag'
import todoComponent from '../../components/todo-app.tag'


riot.mount('*', window.__INITIAL_STATE__)
