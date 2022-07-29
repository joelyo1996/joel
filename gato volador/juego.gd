extends Node2D
export (PackedScene) var perro1
export (PackedScene) var perro2
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$audiofondo.play()
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
	
func _process(delta):
	if (vida_global.puntos >= 25):
		get_tree().change_scene("res://pasaste_de_nivel.tscn")
	if (vida_global.vida_jugador == 0):
		get_tree().change_scene("res://reiniciar.tscn")


func _on_perrorojotimer_timeout():
	$camino2/PathFollow2D.set_offset(randi())
	
	var p2 = perro2.instance()
	add_child(p2)
	
	p2.position = $camino2/PathFollow2D.position
	pass # Replace with function body.
