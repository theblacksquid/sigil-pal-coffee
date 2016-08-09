
template = {}

template.main = ->
    """
    <div class='w3-container w3-light-grey'>
    
    	<div class='w3-container w3-rest'>
    		<h1>Sigil Pal</h1>
    		<h3>automated Statement of intent processor</h3>
    	</div>
    	
    	<div class='w3-container w3-third'>
    		<textarea type='text' id='soi' placeholder='type your intent here' style='resize:none;width:100%;height:100%'></textarea>
    		<br />
    		<button id='process' class='w3-btn-block'>Process Statement of Intent</button>
    	</div>
    	
    	<div class='w3-container w3-rest'>
    		<div id='result'></div>
    		<div id='sigil'></div>
    		<br />
    		<p>To find more info on the process of</p>
    		<p>sigilization and magick in general</p>
    		<p>go <a href='http://www.excommunicate.com/basics-in-sigil-creation-or-the-only-magic-guaranteed-to-work/#axzz4Ej3q2KlR'>here</a> or <a href='http://www.chaosmatrix.org/library/chaos_all.php'>here</a> for more detailed information.</p>
    	</div> 
    	<div class='w3-container w3-rest'>
    		<h4><a href='https://github.com/theblacksquid'>@theblacksquid</a> 2016</h4>
    	</div>
    </div>
    """

template.result = (input) ->
	"""
	<div>
		<h3>#{$('#soi').val()}</h3>
		<p>Base Letters: #{input.BaseChars}</p>
		<p>Numeric Value: #{input.NumVal}</p>
		<p>Seed Number: #{input.SeedNum}</p>
	</div>
	"""
