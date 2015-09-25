<task>
  <li>
    <input
      id={statusToddleID(task.id)}
      class="task-status-toggle"
      type="checkbox"
      checked={task.done}
      onchange={markDone} />
    <label for={statusToddleID(task.id)}></label>
    <span class="task-title">{ task.title }</span>
    <button class="task-remove" onclick={removeTask} >&times;</button>
  </li>

  <style scoped>
    :scope {
			display: block;
			padding: 0.4em 0;
			background-color: #ecf0f1;
			border-bottom: 1px solid #95a5a6;
			transition: all 500ms ease;
		}

    .task-title,
    .task-status,
    .task-remove,
    .task-status-toggle {
      display: inline-block;
      padding: 0.1em 0.5em;
      margin: 0.3em;
    }

    .task-title {}

    .task-status-toggle {
      margin-left: 1em;
    }

    .task-status-toggle {
      visibility: hidden;
      width: 0;
      height: 0;
    }

    .task-status-toggle + label {
      display: inline-block;
      background-color: white;
      border: 0.2em solid #95a5a6;
      border-radius: 100%;
      padding: 0.5em;
      position: relative;
      top: 0.3em;
    }

    .task-status-toggle:checked + label {
      background-color: #27ae60;
      border-color: white;
    }

    .task-status.status-undone {
      background-color: #e74c3c;
      color: white;
    }
    .task-status.status-done {
      background-color: #1abc9c;
      color: white;
    }

    .task-remove {
      float: right;
      padding: 0.6em;
      margin-right: 1em;
      background-color: #e74c3c;
      border: 0px solid white;
      color: white;
      line-height: 1em;
    }
  </style>

  <script>

  statusToddleID(id) {
    return `statusToggle-${id}`
  }
  markDone(event) {
    event.preventDefault();
    TodoStore.toggleStatus(event.item.task)
  }

  removeTask(event) {
    TodoStore.remove(event.item.task)
  }
  </script>
</task>
