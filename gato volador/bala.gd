extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation_degrees -= 30
	
	position.y += 140
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
	pass # Replace with function body.




func _on_proyectil_area_entered(area):
	queue_free()
	pass # Replace with function body.

