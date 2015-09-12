<todo>

	<!-- layout -->
	<h1>{ opts.title }</h1>

	<ul>
		<li each={ item, i in items }>{ item }</li>
	</ul>

	<form onsubmit={ add }>
		<input>
		<button>Add #{ items.length + 1 }</button>
	</form>

	<!-- style -->
	<style scoped>
		h3 {
			font-size: 14px;
		}
	</style>

	<!-- logic -->
	<script>
	this.items = []

	add(e) {
		var input = e.target[0]
			this.items.push(input.value)
			input.value = ''
	}
	</script>

</todo>
