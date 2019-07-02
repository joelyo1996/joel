extends Node2D
export (PackedScene) var perro2
export (PackedScene) var perro3
var rata1 = load("res://Perro/Rata1.tscn")
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$audiogato.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (vida_global.puntos == 100):
		get_tree().change_scene("res://ganaste.tscn")
	if (vida_global.vida_jugador == 0):
		get_tree().change_scene("res://reiniciar.tscn")
	pass


func _on_timerperrorojo_timeout():
	$caminorojo/PathFollow2D.set_offset(randi())
	
	var p2 = perro2.instance()
	add_child(p2)
	
	p2.position = $caminorojo/PathFollow2D.position
	pass # Replace with function body.


func _on_timerperroverde_timeout():
	$caminoperroverde/PathFollow2D.set_offset(randi())
	
	var p3 = perro3.instance()
	add_child(p3)
	
	p3.position = $caminoperroverde/PathFollow2D.position
	pass # Replace with function body.


func _on_Timerrata1_timeout():
	$caminoperroverde/PathFollow2D.set_offset(randi())
	
	var p1 = rata1.instance()
	add_child(p1)
	
	p1.position = $caminoperroverde/PathFollow2D.position
	
	
	pass # Replace with function body.
