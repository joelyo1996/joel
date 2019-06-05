extends Node2D
export (PackedScene) var perro1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	vida_global.puntos = 0
	vida_global.vida_jugador = 100
	randomize()
	pass 


func nuevo_juego():
	#score = 0
	$iniciotimer.start()
	pass


func game_over():
	#$scoretime.stop()
	#$perrotimer.stop()
	
	pass # Replace with function body.


func _on_iniciotimer_timeout():
	$perrotimer.start()
	$scoretime.start()
	pass # Replace with function body.


func _on_scoretime_timeout():
	pass # Replace with function body.


func _on_perrotimer_timeout():
	$camino/PathFollow2D.set_offset(randi())
	
	var p1 = perro1.instance()
	add_child(p1)
	
	p1.position = $camino/PathFollow2D.position
	


