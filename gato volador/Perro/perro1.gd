extends Node2D

var vida_perro=30
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= 7
	position.x -= 1




func _on_Area2D_area_entered(area):
	queue_free()
		
	pass # Replace with function body.
	



