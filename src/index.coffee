
class SigilView
	constructor: (@el, @input) ->
	
	render: ->
		$('#sigil').html('')
		element = document.querySelector('#sigil')
		size = 350
		paper = Raphael(element, size, size)
		kamea = renderKamea(paper, @input.SeedNum, size)
		numbers = matchToKamea(@input.BaseChars, kameas[@input.SeedNum])
		console.log @input.BaseChars
		console.log kameas[@input.SeedNum]
		console.log numbers
		coords = findNumberCoords(numbers, kamea.numbers)
		path = generatePath(coords)
		renderPath(paper, path)

class MainView
	constructor: (@el) ->
	
	render: ->
		$(@el).html template.main()
		@resultView()
	
	resultView: ->

		$("#process").click(->
			text = $("#soi").val()
			chars = digest(text)
			sigil = new SigilView('#sigil', chars)
			$("#result").html template.result(chars)
			sigil.render()
		)

myView = new MainView("#app")
myView.render()








