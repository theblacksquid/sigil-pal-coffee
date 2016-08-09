numerology = {
	'A': 1, 'B': 2, 'C': 3,
	'D': 4, 'E': 5, 'F': 6,
	'G': 7, 'H': 8, 'I': 9,
	'J': 10, 'K': 20, 'L': 30,
	'M': 40, 'N': 50, 'O': 60,
	'P': 70, 'Q': 80, 'R': 90,
	'S': 100, 'T': 200, 'U': 300,
	'V': 400, 'W': 500, 'X': 600,
	'Y': 700, 'Z': 800
	}

getNumVal = (str) ->
	arr = str.replace(/[^a-zA-Z ]/g, "")
			 .toUpperCase()
	         .split("")
	         .filter((value) -> not (value is " "))
	         
	numbers = []
	arr.forEach ((val) -> numbers.push numerology[val])
	numbers.reduce ((x,y) -> x + y)
	
getSeedNum = (num) ->
	arr = num.toString()
	         .split("")
	         .map ((x) -> + x)
	         
	while arr.length > 1
		result = arr
		result = result.reduce ((x, y) -> x + y)
		
		arr = result.toString()
		            .split("")
		            .map((x) -> + x)
	while arr[0] < 3 # not sure about the implications
		arr[0] = arr[0] + 1 # of turning 2's and 1's into 3's
		                    # in a numerological sense
	arr[0]

getBaseChars = (str) ->
	arr = str.replace(/[^a-zA-Z ]/g, "")
			 .toUpperCase()
	         .split("")
	         .filter ((x) -> not (x is " "))
			 
	result = []
	arr.forEach ((x) ->
		if not (result.includes x)
			result.push x
		)
	result
	
digest = (str) ->
	result = {
		BaseChars: getBaseChars str
		NumVal: getNumVal str
		SeedNum: getSeedNum getNumVal(str)
		}

