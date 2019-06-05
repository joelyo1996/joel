extends RigidBody2D

func _ready():
	pass 


func _process(delta):
	rotation_degrees -= 30
	
	position.y += 140
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
	pass 




func _on_proyectil_area_entered(area):
	queue_free()
	pass 

