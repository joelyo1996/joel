extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$puntos.text = "Puntos: "+str(vida_global.puntos)
	pass


func _on_Button_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
	else:
		get_tree().paused = true
	
	pass # Replace with function body.

