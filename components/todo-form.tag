<task-form>

  <form onsubmit={ add }>
    <input placeholder="Add new Task">
  </form>

  <style scoped>
    :scope {
      display: block;
      margin: 2em 0;
    }

    input {
      box-sizing: border-box;
      display: block;
      width: 100%;
      padding: 1em 1.5em;
    }
  </style>

  <script>
    this.count = 0

    this.on('mount', () => {
      this.updateCount()
      TodoStore.onChange(() => {
        this.updateCount()
      })
    })

    updateCount() {
      this.count = TodoStore.getAll().length
      this.update()
    }

    add(event) {
      var input = event.target[0]
			TodoStore.add(input.value)
			input.value = ''
    }
  </script>
</task-form>
