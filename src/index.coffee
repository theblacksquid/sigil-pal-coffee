
class SigilView
	constructor: (@el) ->


class MainView
	constructor: (@el) ->
	
	render: ->
		$(@el).html template.main()
		@resultView()
	
	resultView: ->

		$("#process").click(->
			text = $("#soi").val()
			$("#result").html template.result(digest text)
		)

myView = new MainView("#app")
myView.render()










