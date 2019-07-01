extends Node2D

var vida_rata1 = 40

# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	position.y -= 5

	position.x += 0


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	if $Area2D.collision_layer:
		vida_global.puntos += 2
		queue_free()
	pass # Replace with function body.
