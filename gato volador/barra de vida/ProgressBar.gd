extends ProgressBar

var golpe = 50 
var recuperacion = 30


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func recuperar_vida():
	value = max_value
	
func recuperar_vida_parcial():
	value = value + recuperacion
	if value>= max_value:
		value = max_value


	