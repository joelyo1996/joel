extends NinePatchRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$ganaste.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_volver_al_menu_pressed():
	get_tree().change_scene("res://Interfaz.tscn")
	pass # Replace with function body.
