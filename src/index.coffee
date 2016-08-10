
SigilView = (el, input) ->
	{
		render: ->
			$('#sigil').html('')
			element = document.querySelector('#sigil')
			paper = Raphael(element, size, size)
			size = 350
			kamea = renderKamea(paper, input.SeedNum, size)
			numbers = matchToKamea(input.BaseChars, kameas[input.SeedNum])
			coords = findNumberCoords(numbers, kamea.numbers)
			path = generatePath(coords)
			renderPath(paper, path)
	}

MainView = (el) -> 
	resultView = ->
		$("#process").click(->
			text = $("#soi").val()
			chars = digest(text)
			sigil = SigilView('#sigil', chars)
			$("#result").html template.result(chars)
			sigil.render()
		)
	
	{
		render: ->
			$(el).html template.main()
			resultView()
	}

myView = MainView("#app")
myView.render()








