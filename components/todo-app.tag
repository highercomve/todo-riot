<todo>
	<!-- layout -->
	<h1>Todo App</h1>

	<ul class="task-list">
		<task each="{ task, i in items }" data="{task}"></task>
	</ul>

	<task-form></task-form>
	<!-- style -->
	<style scoped>
		:scope {
			display: block;
			font-family: 'Lato', sans-serif;
			font-weight: 300;
			margin: 10em auto;
			width: 400px;
		}
		@media screen and (max-width: 780px) {
			:scope {
				margin: 2em auto;
				width: 90%;
			}
		}

		.task-list {
			list-style: none;
			padding: 0;
			margin: 0;
			transition: all 500ms ease;
		}
	</style>

	<!-- logic -->
	<script>
	this.items = []

	this.on('mount', ()=> {
		this.updateItems()
		TodoStore.onChange(() => {
			this.updateItems()
		})
	})

	updateItems() {
		this.items = TodoStore.getAll()
		this.update();
	}
	</script>

</todo>
