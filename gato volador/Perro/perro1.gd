extends Node2D
var vida_perro=30
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	#$ProgressBar.max_value = vida_global_enemigo.vida_maxima_enemigo
	#$ProgressBar.value = vida_global_enemigo.vida_enemigo
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= 10
	position.x -= 1




func _on_Area2D_area_entered(area):
	#$ProgressBar.value = vida_global_enemigo.vida_enemigo
	#vida_global_enemigo.vida_enemigo -= 5
	#if ($ProgressBar.value == 0):
	vida_global.puntos += 1
	queue_free()
	pass # Replace with function body.
	





func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.



	
	

